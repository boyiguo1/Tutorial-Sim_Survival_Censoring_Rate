run_cns_rate_test <- function(pi=0.2){
  n <- 10000

  alpha.t<- 1.2
  alpha.c <- 0.8
  scale.t <- 1

  a1<- -0.1
  a2<- 0.1
  a3<- -0.5
  a4<- 0.5
  a0<- -1*alpha.t*log(scale.t)
  u1 <-rnorm(n,0,1)
  u2 <-runif(n,0,1)
  u3 <-rbinom(n,1,0.5)
  u4 <-rpois(n,5)

  lambda<- exp(-(a0+a1*u1+a2*u2+a3*u3+a4*u4)/alpha.t)
  max.lambda<-max(lambda)
  # browser()
  scale.p <- find_censor_parameter(lambda, pi = pi)


  event_dat <- simsurv(dist = "weibull",
                       lambdas = scale.t,
                       gammas = alpha.t,
                       x = data.frame( u1, u2, u3, u4),
                       betas = c(u1 = a1, u2 = a2, u3=a3, u4 = a4))

  cen_dat <- rweibull(n = n, shape = alpha.c, scale = scale.p)

  sum(cen_dat < event_dat$eventtime)/n
}
