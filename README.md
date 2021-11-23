
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

In this repository/project, we
[refactor](https://en.wikipedia.org/wiki/Code_refactoring) the R code
segments offered in the appendix of Wan (2017) and provide a function
`find_censor_parameter` located in `R\find_censor_parameter.R` \[TODO:
add a link to the address\]. We further conducted a simulation study to
examine **if using the estimated censoring parameter would yield
anticipated censoring proportion**. In the simulation study, we focus on
examining the following factors: censoring proportions
*π* ∈ {0.15, 0.3, 0.45}, \[TODO: expand to more factors, e.g. sample
size, \]. For each combination of the factors, we run 1000 replications.
We use the R package
[`simsurv`](https://cran.r-project.org/web/packages/simsurv/index.html)(Brilleman
et al. 2020) for simulating the event time. There are many other factors
in the R function `find_censor_parameter` that could be considered
further to examine the performance of the simulation procedure, such as
the parameters of the empiric density estimation.

# Get started

1.  Install the necessary workflow packages
    [`targets`](https://cran.r-project.org/web/packages/targets/index.html)
    and [`renv`](https://rstudio.github.io/renv/articles/renv.html) if
    you don’t already have
2.  Open the R console and call `renv::restore()` to install the
    required R packages. Please give permission to install the necessary
    packages. This will mirror the version of packages used in the
    creation of the manuscript exactly.
3.  call the `tar_make()` function to run the pipeline.

For the generated report, please go to \[TODO: add the report link
address\]

### References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Brilleman2020" class="csl-entry">

Brilleman, Samuel L., Rory Wolfe, Margarita Moreno-Betancur, and Michael
J. Crowther. 2020. “Simulating Survival Data Using the <span
class="nocase">simsurv</span> R Package.” *Journal of Statistical
Software* 97 (3): 1–27. <https://doi.org/10.18637/jss.v097.i03>.

</div>

<div id="ref-Wan2017" class="csl-entry">

Wan, Fei. 2017. “Simulating Survival Data with Predefined Censoring
Rates for Proportional Hazards Models.” *Statistics in Medicine* 36 (5):
838–54.

</div>

</div>
