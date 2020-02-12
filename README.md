# Three-Arm_NI_Trial
Sample size calculation in three-arm non-inferiority trials.

## Continuous Outcome Variables

> We consider three-arm non-inferiority trial including the experimental treatment (new treatment), 
  a reference treatment (active control), and a placebo, denoted by E, R, and P, respectively.  
  Assume that the larger values indicate a greater benefit, to test the non-inferiority of the 
  treatment E to the treatment R with the assay sensitivity in this three-arm trial, we have to show
  
>  (a) The non-inferiority of the treatment E to the treatment R with a non-inferiority margin , and

>  (b) The superiority of the treatment R to the P by more than , simultaneously.

### Hypotheses

> Kwong et al. (2012) proposed the testing for the non-inferiority of E to R with the assay sensitivity 
  in the three-arm trial by considering the following two testing hypotheses:
  
>> <a href="https://www.codecogs.com/eqnedit.php?latex=H_0:&space;\mu_E&space;\leq&space;\mu_R&space;-&space;M_2&space;\text{&space;vs.&space;}&space;H_1:&space;\mu_E&space;>&space;\mu_R&space;-&space;M_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?H_0:&space;\mu_E&space;\leq&space;\mu_R&space;-&space;M_2&space;\text{&space;vs.&space;}&space;H_1:&space;\mu_E&space;>&space;\mu_R&space;-&space;M_2" title="H_0: \mu_E \leq \mu_R - M_2 \text{ vs. } H_1: \mu_E > \mu_R - M_2" /></a>

>> <a href="https://www.codecogs.com/eqnedit.php?latex=K_0:&space;\mu_R&space;\leq&space;\mu_P&space;&plus;&space;M_1&space;\text{&space;vs.&space;}&space;K_1:&space;\mu_R&space;>&space;\mu_P&space;&plus;&space;M_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?K_0:&space;\mu_R&space;\leq&space;\mu_P&space;&plus;&space;M_1&space;\text{&space;vs.&space;}&space;K_1:&space;\mu_R&space;>&space;\mu_P&space;&plus;&space;M_1" title="K_0: \mu_R \leq \mu_P + M_1 \text{ vs. } K_1: \mu_R > \mu_P + M_1" /></a>

> where <a href="https://www.codecogs.com/eqnedit.php?latex=\mu_i" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mu_i" title="\mu_i" /></a>
  is the ith treatment mean, <a href="https://www.codecogs.com/eqnedit.php?latex=M_1&space;\text{&space;and&space;}&space;\M_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_1&space;\text{&space;and&space;}&space;\M_2" title="M_1 \text{ and } \M_2" /></a>
  are the margin of superiority and non-inferiority, respectively.
  
> When both of two null hypotheses are rejected, we can conclude that

>> <a href="https://www.codecogs.com/eqnedit.php?latex=\mu_P&space;&plus;&space;M_1&space;<&space;\mu_R&space;<&space;\mu_E&space;&plus;&space;M_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mu_P&space;&plus;&space;M_1&space;<&space;\mu_R&space;<&space;\mu_E&space;&plus;&space;M_2" title="\mu_P + M_1 < \mu_R < \mu_E + M_2" /></a>

> which indicates that the non-inferiority of E to R with a non-inferiority margin <a href="https://www.codecogs.com/eqnedit.php?latex=M_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_2" title="M_2" /></a>,
  and the superiority of the R to P by more than <a href="https://www.codecogs.com/eqnedit.php?latex=M_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_1" title="M_1" /></a>,
  simultaneously. The testing hypotheses are modified that proposed by Hida and Tango (2011).

> The draft guidance provided by the U.S. Food and Drug Administration maintains that treatment effect R should be considered 
  to have a much greater magnitude than the NI margin. In fact, we should have an idea of R's effect size based on accumulated 
  knowledge from past clinical studies with P. <a href="https://www.codecogs.com/eqnedit.php?latex=M_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_1" title="M_1" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=M_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_2" title="M_2" /></a>,
  where <a href="https://www.codecogs.com/eqnedit.php?latex=M_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_1" title="M_1" /></a>
  is the entire effect size of R and <a href="https://www.codecogs.com/eqnedit.php?latex=M_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_2" title="M_2" /></a>
  is the largest clinically acceptable difference between E and R.

> Consequently, M1 is the value that reflects the effect size of R over P that is to be present in the study and <a href="https://www.codecogs.com/eqnedit.php?latex=M_2&space;(\leq&space;M_1)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M_2&space;(\leq&space;M_1)" title="M_2 (\leq M_1)" /></a>
  is the NI margin needed to measure the NI of E to R.

### Statistical Model

> Let <a href="https://www.codecogs.com/eqnedit.php?latex=X_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X_{ij}" title="X_{ij}" /></a>
  be the measurement of a primary endpoint, where <a href="https://www.codecogs.com/eqnedit.php?latex=i&space;=&space;P,&space;R,&space;E,&space;j&space;=&space;1,&space;\dots,&space;n_i" target="_blank"><img src="https://latex.codecogs.com/gif.latex?i&space;=&space;P,&space;R,&space;E,&space;j&space;=&space;1,&space;\dots,&space;n_i" title="i = P, R, E, j = 1, \dots, n_i" /></a>.
  We assume that <a href="https://www.codecogs.com/eqnedit.php?latex=X_{ij}&space;=&space;\mu_i&space;&plus;&space;\varepsilon_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X_{ij}&space;=&space;\mu_i&space;&plus;&space;\varepsilon_{ij}" title="X_{ij} = \mu_i + \varepsilon_{ij}" /></a>,
  where <a href="https://www.codecogs.com/eqnedit.php?latex=n_i" target="_blank"><img src="https://latex.codecogs.com/gif.latex?n_i" title="n_i" /></a>
  is sample size for ith treatment group, <a href="https://www.codecogs.com/eqnedit.php?latex=N&space;=&space;\sum_{i&space;=&space;E,&space;R,&space;P}&space;n_i" target="_blank"><img src="https://latex.codecogs.com/gif.latex?N&space;=&space;\sum_{i&space;=&space;E,&space;R,&space;P}&space;n_i" title="N = \sum_{i = E, R, P} n_i" /></a>,
  <a href="https://www.codecogs.com/eqnedit.php?latex=\mu_i" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mu_i" title="\mu_i" /></a>
  is mean of treatment effect for i treatment group, and with the pooled variance <a href="https://www.codecogs.com/eqnedit.php?latex=\sigma^2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\sigma^2" title="\sigma^2" /></a>,
  <a href="https://www.codecogs.com/eqnedit.php?latex=\varepsilon_{ij}&space;\sim&space;N(0,&space;\sigma^2)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\varepsilon_{ij}&space;\sim&space;N(0,&space;\sigma^2)" title="\varepsilon_{ij} \sim N(0, \sigma^2)" /></a>.
  Note that the larger value of <a href="https://www.codecogs.com/eqnedit.php?latex=X_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X_{ij}" title="X_{ij}" /></a>
  indicate the greater benefit.
  
### Test statistic

> For testing the <a href="https://www.codecogs.com/eqnedit.php?latex=H_0" target="_blank"><img src="https://latex.codecogs.com/gif.latex?H_0" title="H_0" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=K_0" target="_blank"><img src="https://latex.codecogs.com/gif.latex?K_0" title="K_0" /></a>,
  we use the test statistic <a href="https://www.codecogs.com/eqnedit.php?latex=T_E" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_E" title="T_E" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=T_P" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_P" title="T_P" /></a>,

> where <a href="https://www.codecogs.com/eqnedit.php?latex=T_E&space;=&space;\frac{\bar{X}_E&space;-&space;\bar{X}_R&space;&plus;&space;M_2}{\hat{\sigma}\sqrt{1/n_E&plus;1/n_R}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_E&space;=&space;\frac{\bar{X}_E&space;-&space;\bar{X}_R&space;&plus;&space;M_2}{\hat{\sigma}\sqrt{1/n_E&plus;1/n_R}}" title="T_E = \frac{\bar{X}_E - \bar{X}_R + M_2}{\hat{\sigma}\sqrt{1/n_E+1/n_R}}" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=T_P&space;=&space;\frac{\bar{X}_R&space;-&space;\bar{X}_P&space;-&space;M_1}{\hat{\sigma}\sqrt{1/n_R_&plus;1/n_P}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_P&space;=&space;\frac{\bar{X}_R&space;-&space;\bar{X}_P&space;-&space;M_1}{\hat{\sigma}\sqrt{1/n_R_&plus;1/n_P}}" title="T_P = \frac{\bar{X}_R - \bar{X}_P - M_1}{\hat{\sigma}\sqrt{1/n_R_+1/n_P}}" /></a>,
  where <a href="https://www.codecogs.com/eqnedit.php?latex=\hat{\sigma}&space;=&space;\sqrt{\frac{(n_E-1)S^2_E&plus;(n_R-1)S^2_R)}{n_E&plus;n_R-2}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\hat{\sigma}&space;=&space;\sqrt{\frac{(n_E-1)S^2_E&plus;(n_R-1)S^2_R)}{n_E&plus;n_R-2}}" title="\hat{\sigma} = \sqrt{\frac{(n_E-1)S^2_E+(n_R-1)S^2_R)}{n_E+n_R-2}}" /></a>.

> Under null hypotheses, <a href="https://www.codecogs.com/eqnedit.php?latex=T_E&space;\sim&space;t_{n_E&plus;n_R-2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_E&space;\sim&space;t_{n_E&plus;n_R-2}" title="T_E \sim t_{n_E+n_R-2}" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=T_P&space;\sim&space;t_{n_R&plus;n_P-2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_P&space;\sim&space;t_{n_R&plus;n_P-2}" title="T_P \sim t_{n_R+n_P-2}" /></a>.

### Sample size

> Under assuming that a NI trial is designed to detect the differences,
  <a href="https://www.codecogs.com/eqnedit.php?latex=\delta_1&space;=&space;\frac{\mu_E-\mu_R&plus;M_2}{\sigma}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\delta_1&space;=&space;\frac{\mu_E-\mu_R&plus;M_2}{\sigma}" title="\delta_1 = \frac{\mu_E-\mu_R+M_2}{\sigma}" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=\delta_2&space;=&space;\frac{\mu_R-\mu_P-M_1}{\sigma}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\delta_2&space;=&space;\frac{\mu_R-\mu_P-M_1}{\sigma}" title="\delta_2 = \frac{\mu_R-\mu_P-M_1}{\sigma}" /></a>,
  for given <a href="https://www.codecogs.com/eqnedit.php?latex=H_0" target="_blank"><img src="https://latex.codecogs.com/gif.latex?H_0" title="H_0" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=K_0" target="_blank"><img src="https://latex.codecogs.com/gif.latex?K_0" title="K_0" /></a>
  belong to the false null hypotheses. For a given design configuration <a href="https://www.codecogs.com/eqnedit.php?latex=(n_E,&space;n_P,&space;n_R)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n_E,&space;n_P,&space;n_R)" title="(n_E, n_P, n_R)" /></a>
  and the critical value c in NI testing with specified <a href="https://www.codecogs.com/eqnedit.php?latex=\delta_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\delta_1" title="\delta_1" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=\delta_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\delta_2" title="\delta_2" /></a>,
  Kwong et al. (2012) proposed the following power of the test,

>> <a href="https://www.codecogs.com/eqnedit.php?latex=P(T_E&space;>&space;c,&space;T_P&space;>&space;c&space;|&space;\delta_1,&space;\delta_2,&space;n_E,&space;n_R,&space;n_P)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(T_E&space;>&space;c,&space;T_P&space;>&space;c&space;|&space;\delta_1,&space;\delta_2,&space;n_E,&space;n_R,&space;n_P)" title="P(T_E > c, T_P > c | \delta_1, \delta_2, n_E, n_R, n_P)" /></a>,

> where <a href="https://www.codecogs.com/eqnedit.php?latex=T_E" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_E" title="T_E" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=T_P" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_P" title="T_P" /></a>
  under <a href="https://www.codecogs.com/eqnedit.php?latex=H_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?H_1" title="H_1" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=K_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?K_1" title="K_1" /></a>
  have a bivariate normal distribution with mean vector

>> <a href="https://www.codecogs.com/eqnedit.php?latex=\mu&space;=&space;\begin{bmatrix}&space;\frac{\delta_1}{\sqrt{1/n_E&plus;1/n_R}}&space;&&space;\frac{\delta_2}{\sqrt{1/n_R&plus;1/n_P}}&space;\end{bmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mu&space;=&space;\begin{bmatrix}&space;\frac{\delta_1}{\sqrt{1/n_E&plus;1/n_R}}&space;&&space;\frac{\delta_2}{\sqrt{1/n_R&plus;1/n_P}}&space;\end{bmatrix}" title="\mu = \begin{bmatrix} \frac{\delta_1}{\sqrt{1/n_E+1/n_R}} & \frac{\delta_2}{\sqrt{1/n_R+1/n_P}} \end{bmatrix}" /></a>

> and variance-covariance matrix <a href="https://www.codecogs.com/eqnedit.php?latex=\Sigma_2(\rho_E&space;\rho_P)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\Sigma_2(\rho_E&space;\rho_P)" title="\Sigma_2(\rho_E \rho_P)" /></a>
  where <a href="https://www.codecogs.com/eqnedit.php?latex=\sigma" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\sigma" title="\sigma" /></a>
  is assumed to be known.

> Furthermore, Kwong et al. (2012) proposed the optimal sample size can be determined by solving the following inequality

>> <a href="https://www.codecogs.com/eqnedit.php?latex=\min_N&space;\max_{\pi_E,&space;\pi_P}&space;P(T_E&space;>&space;c^*,&space;T_P&space;>&space;c^*&space;|&space;\delta_1,&space;\delta_2)&space;\geq&space;1-\beta" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\min_N&space;\max_{\pi_E,&space;\pi_P}&space;P(T_E&space;>&space;c^*,&space;T_P&space;>&space;c^*&space;|&space;\delta_1,&space;\delta_2)&space;\geq&space;1-\beta" title="\min_N \max_{\pi_E, \pi_P} P(T_E > c^*, T_P > c^* | \delta_1, \delta_2) \geq 1-\beta" /></a>,

> where <a href="https://www.codecogs.com/eqnedit.php?latex=c^*" target="_blank"><img src="https://latex.codecogs.com/gif.latex?c^*" title="c^*" /></a>
  depends on the design configuration <a href="https://www.codecogs.com/eqnedit.php?latex=(n_E,&space;n_P,&space;nR)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n_E,&space;n_P,&space;nR)" title="(n_E, n_P, nR)" /></a>.
  Let <a href="https://www.codecogs.com/eqnedit.php?latex=n_R:n_E:n_P&space;=&space;1:\pi_E:\pi_P" target="_blank"><img src="https://latex.codecogs.com/gif.latex?n_R:n_E:n_P&space;=&space;1:\pi_E:\pi_P" title="n_R:n_E:n_P = 1:\pi_E:\pi_P" /></a>,
  then <a href="https://www.codecogs.com/eqnedit.php?latex=T_E" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_E" title="T_E" /></a>
  and <a href="https://www.codecogs.com/eqnedit.php?latex=T_P" target="_blank"><img src="https://latex.codecogs.com/gif.latex?T_P" title="T_P" /></a>
  have a bivariate normal distribution with mean vector

>> <a href="https://www.codecogs.com/eqnedit.php?latex=\mu&space;=&space;\begin{bmatrix}&space;\delta_1&space;\sqrt{\frac{\pi_En_R}{1&plus;\pi_E}}&space;&&space;\delta_2&space;\sqrt{\frac{\pi_Pn_R}{1&plus;\pi_P}}&space;\end{bmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mu&space;=&space;\begin{bmatrix}&space;\delta_1&space;\sqrt{\frac{\pi_En_R}{1&plus;\pi_E}}&space;&&space;\delta_2&space;\sqrt{\frac{\pi_Pn_R}{1&plus;\pi_P}}&space;\end{bmatrix}" title="\mu = \begin{bmatrix} \delta_1 \sqrt{\frac{\pi_En_R}{1+\pi_E}} & \delta_2 \sqrt{\frac{\pi_Pn_R}{1+\pi_P}} \end{bmatrix}" /></a>

> and variance-covariance matrix <a href="https://www.codecogs.com/eqnedit.php?latex=\Sigma_2(\rho^&plus;)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\Sigma_2(\rho^&plus;)" title="\Sigma_2(\rho^+)" /></a>
  with <a href="https://www.codecogs.com/eqnedit.php?latex=\rho^&plus;&space;=&space;\sqrt{\frac{\pi_E&space;\pi_P}{(1&plus;\pi_E)(1&plus;\pi_P)}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\rho^&plus;&space;=&space;\sqrt{\frac{\pi_E&space;\pi_P}{(1&plus;\pi_E)(1&plus;\pi_P)}}" title="\rho^+ = \sqrt{\frac{\pi_E \pi_P}{(1+\pi_E)(1+\pi_P)}}" /></a>.

> The determination of optimal design configuration <a href="https://www.codecogs.com/eqnedit.php?latex=(N,&space;\pi_E,&space;\pi_P)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(N,&space;\pi_E,&space;\pi_P)" title="(N, \pi_E, \pi_P)" /></a>
  will be computed as following algorithm:
  
>> A. Obtain the initial total sample size N under the assumption that 

>>> <a href="https://www.codecogs.com/eqnedit.php?latex=\pi_E&space;=&space;\pi_P&space;=&space;1/\sqrt{k&plus;1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_E&space;=&space;\pi_P&space;=&space;1/\sqrt{k&plus;1}" title="\pi_E = \pi_P = 1/\sqrt{k+1}" /></a>.

>> B. For a given N, search for  and  numerically within the domains of 
      <a href="https://www.codecogs.com/eqnedit.php?latex=0&space;<&space;\pi_E,&space;\pi_P&space;<&space;1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?0&space;<&space;\pi_E,&space;\pi_P&space;<&space;1" title="0 < \pi_E, \pi_P < 1" /></a>,
      such that the maximum power is achieved.
    
>> C. Set N = N-1 and repeat B until the power requirement is satisfied.

### References

> 1. Hida E. and Tango T. (2011).  On the three-arm non-inferiority trial including a placebo with a prespecified margin.  Statistics in Medicine, 30; 224–231.

> 2. Kwong K. S., Cheung S. H., Hayter A. J. and Wen M. J. (2012).  Extension of three-arm non-inferiority studies to trials with multiple new treatments.  Statistics in Medicine, 31; 2833-2843.
