#' Sample thermal tolerances
#' 
#' Sample thermal tolerances from provided curves.
#' 
#' @param ttol Numeric matrix of temperature values (first column) and species 
#' (next columns, one column per species) containing values of either 
#' probability of occurrence (for occurrence data) or any relative fitness measure.
#' @param n Number of temperature values to be sampled (with replacement) for each species (default n = 500).
#' @return Matrix of n temperature values for each species.
#' 
#' 
sample_ttol <- function(ttol, n = 500){
  
  ttol.sample <- apply(ttol[, -1], 2, sample_fun)
}


sample_fun <- function(x, tempvals = ttol[,1], n = n){
  
  sample(tempvals, size = n, replace = TRUE, prob = x)
}
