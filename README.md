
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dataInspecter

<!-- badges: start -->
<!-- badges: end -->

The goal of dataInspecter is to read/load in the data, inspect data and
save data. Plus it can also give the time.

# Functions

This dataset contains four functions that can be helpful for loading,
inspecting and saving data.

The four funtions are: 1: read_data_from_excel(). loads in data from
excel and previews data 2: print_head(). shows the first 10 rows of the
dataset 3: save_datafile(). saves variable as .csv and .rds 4: time().
tells the time

## Installation

You can install the development version of dataInspecter from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("kjettil/dataInspecter")
```

## Example

This is a basic example which shows you how to preview a dataset using
print_head and saving the dataset as CSV and rds using save_datafile

``` r
library(dataInspecter)
#> 
#> Attaching package: 'dataInspecter'
#> The following object is masked from 'package:stats':
#> 
#>     time
dataset <- data.frame(X1 = c(1.5, 2.8, 3.2, 4.7),X2 = c(5.1, 6.2, 7.3, 8.4),X3 = c(9.9, 10.2, 11.5, 12.8))
print_head(dataset)
#> 
#> ***********************
#> First few rows of the dataset:
#> ***********************
#> 
#>    X1  X2   X3
#> 1 1.5 5.1  9.9
#> 2 2.8 6.2 10.2
#> 3 3.2 7.3 11.5
#> 4 4.7 8.4 12.8

save_datafile(dataset, "test_dataset")
#> Data saved as CSV: test_dataset.csv
#> Data saved as RDS: test_dataset.rds
```

## Data

This package comes with a dataset that shows the tetracyclines
consumption in the EU/EEA from 2011 till 2020. ?tetracyclines_usage will
give you usethis::use_vignette(“my-vignette”)more detailed information
about the dataset.
