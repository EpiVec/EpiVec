#' test
#'
#' test
#'
#' @param test test.
#' 
#' @details \insertCite{Reyna2022}{EpiVec}
#'
#' @return test
#' 
#' @author
#' Maxime Lenormand (\email{maxime.lenormand@inrae.fr})
#'
#' @examples
#' print test
#'
#' @export
test <- function(test = TRUE) {

  library(TDLM)
  
  data(od)
  
  
  dim(od)
  
  data(mass)
  
  
  dim(mass)
  
  mi <- as.numeric(mass[,1])
  names(mi) <- rownames(mass)
  
  mj <- mi
  
  Oi <- as.numeric(mass[,2])
  names(Oi) <- rownames(mass)
  
  Dj <- as.numeric(mass[,3])
  names(Dj) <- rownames(mass)
  
  spi <- extract_spatial_information(county, id = "ID")
  
  distance2 <- spi$distance
  
  
  library(sf)
  
  data(county)
  
  sij <- extract_opportunities(opportunity = mi,
                               distance = distance,
                               check_names = TRUE)
  
  
}
