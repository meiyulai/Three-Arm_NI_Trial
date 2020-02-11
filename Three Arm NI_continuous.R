library(mvtnorm)

ThreeArmsTrial <- function(alpha, beta, muE, muR, muP, sigma, M1, M2, k, code = 1){
  func.H <- function(piE, piP){
    nR <- N/(1+k*piE+piP)
    rho <- sqrt(piE*piP/((1+piE)*(1+piP)))
    corr.matrix <- array(c(1, -rho, -rho, 1), dim = c(2, 2))
    c <- qmvnorm(1-alpha, tail = "lower", mean = c(0, 0), corr = corr.matrix)$quantile  
    a <- -c+delta1*sqrt(piE*nR/(1+piE))
    b <- -c+delta2*sqrt(piP*nR/(1+piP))
    v <- pmvnorm(lower = c(-Inf, -Inf), upper = c(a, b), mean = c(0, 0), corr = corr.matrix)
    return(v)
  }
     
  # a larger value implies the better efficacy 
  if(code == 1){
    delta1 <- (muE-muR+M2)/sigma  # delta1, delta2 > 0
    delta2 <- (muR-muP-M1)/sigma
  }
  ## a smaller value implies the better efficacy
  if(code == 2){
    delta1 <- (muR-muE+M2)/sigma  # delta1, delta2 > 0
    delta2 <- (muP-muR-M1)/sigma
  }

  piE <- piP <- 1/sqrt(k+1)
    
  #################### step (a)_Initial total sample size ####################
  N <- 1
  while(func.H(piE, piP) < 1-beta) { N <- N+1 }
  #################### step(b)_optimal sample size allocation ####################   
  func <- function(x){
    piE <- x[1]
    piP <- x[2]
    v <- func.H(piE, piP)
    return(v)
  }
  ans <- optim(par = c(0.5, 0.5), fn = func, method = "L-BFGS-B",
               lower = c(0, 0), upper = c(1, 1), control = list(fnscale = -1))
  while(ans$value > 1-beta){
    N <- N-1
    ans <- optim(par = c(0.5, 0.5), fn = func, method = "L-BFGS-B",
                 lower = c(0, 0), upper = c(1, 1), control = list(fnscale = -1))
  }
  nR <- round((N+1)/(1+k*ans$par[1]+ans$par[2]), 0)
  nE <- round(nR*ans$par[1], 0)
  nP <- round(nR*ans$par[2], 0)
  TN <- nR+k*nE+nP
  return(c(TN, ans$par, ans$value, nR, nE, nP))
  #return(proc.time())
}
# Example
#result <- print(paste(c('Total sample size', 'piE', 'piP', 'power', 'nR', 'nE', 'nP'), 
#				ThreeArmsTrial(alpha = 0.05, beta = 0.2, muE = 0.85, muR = 0.8, muP = 0.5, sigma = 0.2, M1 = 0.15, M2 = 0.025, k = 2), 
#				sep = ':'))

