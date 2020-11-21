
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Alfaifi

<!-- badges: start -->

<!-- badges: end -->

The goal of Alfaifi is to …

## Installation

Install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("bayanalfaifi/Alfaifi")
#> Downloading GitHub repo bayanalfaifi/Alfaifi@HEAD
#> pillar  (1.4.6 -> 1.4.7) [CRAN]
#> cli     (2.1.0 -> 2.2.0) [CRAN]
#> stringi (1.4.6 -> 1.5.3) [CRAN]
#> Installing 3 packages: pillar, cli, stringi
#> 
#>   There are binary versions available but the source versions are later:
#>        binary source needs_compilation
#> pillar  1.4.6  1.4.7             FALSE
#> cli     2.1.0  2.2.0             FALSE
#> 
#> 
#> The downloaded binary packages are in
#>  /var/folders/74/4wp5dsg95cj1b_nq1sdg9x7r0000gn/T//Rtmpmg30cq/downloaded_packages
#> installing the source packages 'pillar', 'cli'
#>      checking for file ‘/private/var/folders/74/4wp5dsg95cj1b_nq1sdg9x7r0000gn/T/Rtmpmg30cq/remotesc5f574fc89/bayanalfaifi-Alfaifi-9902558/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/74/4wp5dsg95cj1b_nq1sdg9x7r0000gn/T/Rtmpmg30cq/remotesc5f574fc89/bayanalfaifi-Alfaifi-9902558/DESCRIPTION’ (410ms)
#>   ─  preparing ‘Alfaifi’:
#>   ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘Alfaifi_0.1.0.tar.gz’
#>      
#> 
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Alfaifi)
## basic example code
```

Install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("bayanalfaifi/Alfaifi")
#> Skipping install of 'Alfaifi' from a github remote, the SHA1 (9902558c) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## Introduction and motivations:

In matter of having a successful restaurant it should has a renewable
dishes, Chefs always have to have multiple dishes that could be done in
a short time, and serve the customers in a perfect few time. To do so, I
create a package that would calculate the cook time and preparation time
by inserting the ingredients of the new dishes that the chefs would
estimate its time.The functions are easy to be used by any Chefes around
the world to predict the time of dishes they want and making sure that
has a reasonable time to be finished and served to the
customer.Customers prefer restaurants that bring the food fresh and in
short time so, this is another reason for why I create that functions.In
anther word, that would help restaurants owners to have the customer’s
satisfaction and make them more welling to come again to the restaurant.

## Package content:

In This package, I provide an app that will estimate the cook and
preparation time by given a choice of ingredients by users. The user
must supply a choice of ingredient an classify the dish as sweet, spicy,
bitter or sour to have better predictions.

It is available for people who do not want to use the coding part :).

There are three main functions which are:

  - prepare\_data  
    Create a single observation based on the user’s selections
  - cook\_time  
    Using the prepared data set, and a fit model, calculates the cook
    time.
  - prep\_time  
    Using the prepared data set, and a fit model, calculates the
    preparation time
  - rec\_time  
    A gadget that prompts the user for recipe information, then
    calculates preparation and cook time.

In the “Alfaifi” package, there is a flavor profile that users must
shoes one of them to complete their code predictions

``` r
Alfaifi::flavor_profile
#> [1] "sweet"  "spicy"  "bitter" "sour"
```
