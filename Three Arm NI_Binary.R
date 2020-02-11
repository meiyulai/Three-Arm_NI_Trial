library(mvtnorm)

SampleN.ThreeArm <- function(alpha, beta, piE, piR ,piP, Delta){

  myfunc <- function(CP){
    nE <- N/(1+CR+CP)
    rho <- -piR*(1-piR)*sqrt(CP)
    rho <- rho/sqrt(piE*(1-piE)*CR+piR*(1-piR))
    rho <- rho/sqrt(piR*(1-piR)*CP+piP*(1-piP)*CR)
    Sigma <- matrix(c(1, rho, rho, 1), nrow = 2, ncol = 2, byrow = T)
              
    a <- 1+CR+CP  
    b <- -(1+CR+CP+piE+CR*piR+CP*piP+Delta*(1+2*CR+CP))  
    c <- CR*Delta^2+(1+CR+CP+2*CR*piR)*Delta+piE+CR*piR+CP*piP
    d <- -CR*piR*Delta*(Delta+1)
    v <- (b^3)/(27*a^3)-(b*c)/(6*a^2)+d/(2*a)    
    u <- sign(v)*sqrt((b^2/(9*a^2))-(c/(3*a)))
    w <- (pi+acos(v/(u^3)))/3
    piRs <- 2*u*cos(w)-b/(3*a)

    c1 <- (piRs-Delta)*(1-piRs+Delta)*CR+piRs*(1-piRs)
    c1 <- c1/(piE*(1-piE)*CR+piR*(1-piR))
    c1 <- sqrt(c1)*qnorm(1-alpha/2)
    c1 <- c1-(piE-(piR-Delta))*sqrt(CR*nE)/sqrt(piE*(1-piE)*CR+piR*(1-piR))

    c2 <- piRs*(1-piRs)*CP+(piRs-Delta)*(1-piRs+Delta)*CR
    c2 <- c2/(piR*(1-piR)*CP+piP*(1-piP)*CR)
    c2 <- sqrt(c2)*qnorm(1-alpha/2)
    c2 <- c2-(piR-(piP+Delta))*sqrt(CR*CP*nE)/sqrt(piR*(1-piR)*CP+piP*(1-piP)*CR)

    fv <- pmvnorm(lower = c(c1, c2), upper = c(Inf, Inf), mean = c(0, 0), corr = Sigma)
    return(fv)
  }

  delta1 <- piE-(piR-Delta)
  delta2 <- piR-(piP+Delta)
  CR <- 1
  CP <- 1/sqrt(2)

  N <- 1
  while( myfunc(CP) < 1-beta ) N <- N+1
 
  ans <- optim(par = 0.5, fn = myfunc, method = "Brent", lower = 0, upper = 1, control = list(fnscale = -1))
  while( ans$value > 1-beta ){
    N <- N-1
    ans <- optim(par = 0.5, fn = myfunc, method = "Brent", lower = 0, upper = 1, control = list(fnscale = -1))
  }
  nE <- round((N+1)/(1+CR+ans$par), 0)
  nR <- round(nE*CR, 0)
  nP <- round(nE*ans$par, 0)
  TN <- sum(nE, nR, nP)
  return(c(TN, ans$par, ans$value, nE, nR, nP))
}

# Example
# result <- paste(c('Total sample size', 'CP', 'power', 'nE', 'nR', 'nP'), SampleN.ThreeArm(alpha = 0.05, beta = 0.2, piE = 0.45, piR = 0.4, piP = 0.1, Delta = 0.1), sep = ':')

