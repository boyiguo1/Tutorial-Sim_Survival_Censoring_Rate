
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Simulate Survival Outcome with Controlled Censoring Proportion

<!-- badges: start -->
<!-- badges: end -->

The goal of this repository is to provide a tutorial, as well as *R*
functions, to simulate survival outcomes with controlled censoring
proportion following Wan (2017). Particularly, we are interested in
simulate survival outcomes (both *surviving time* and *censoring
status*) followed Weibull distributions (for *event time* and *censoring
time*), where the exponential distribution can be considered as a
special case of the weibull distribution. As a part of the tutorial, we
examine if the simulated data generated with the proposed method/R
function has the anticipated censoring proportion. The simulation study
was constructed using the R workflow package
[targets](https://cran.r-project.org/web/packages/targets/index.html).

# Background

When running extensive simulation studies for survival outcome with
(right-)censoring, tuning of the censoring distribution is required and
labor intensive. Wan (2017) proposed a numeric method to estimate the
parameters of censoring distributions given the hazard distribution and
covariate data, which greatly improves the automation of survival
simulation studies. A closed-form calculation is provided for limited
scenarios, but we focused on the numeric method for the purpose of
generalizability. Specifically, we focus on the case where hazard and
censoring distributions are Weibull distributions with different
parameters, i.e. different shape *k* and scale *λ*. In theory, this
should also work for cases where the distributions are exponential,
which is equivalent to a Weibull(1, *λ*), or Weibull with the same shape
parameter *k* for both hazard and censoring distributions. We don’t (and
probably won’t) provide support for the Gumpertz distribution (another
common hazard distribution).

In the simulation study, we focus on examining the following factors:
censoring proportions *π* ∈ {0.15, 0.3, 0.45}, \[TODO: expand to more
factors, e.g. sample size, \]. For each combination of the factors, we
run 1000 replications.

# Get started

### References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Wan2017" class="csl-entry">

Wan, Fei. 2017. “Simulating Survival Data with Predefined Censoring
Rates for Proportional Hazards Models.” *Statistics in Medicine* 36 (5):
838–54.

</div>

</div>
