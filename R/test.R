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
#' #print test
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

  
  data(county)
  
  res <- run_law_model(law = "NGravExp", 
                       mass_origin = mi, 
                       mass_destination = mj, 
                       distance = distance, 
                       opportunity = NULL,
                       param = 0.01,
                       write_proba = TRUE,
                       
                       model = "DCM", 
                       nb_trips = NULL, 
                       out_trips = Oi, 
                       in_trips = Dj,
                       average = FALSE, 
                       nbrep = 3)
  
  
}
