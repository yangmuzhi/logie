#'
#'
#'
#'
#' @export


costfun <- function(M, S, ...){
  #this function can be write manually.
  #bigger the better
  #here is a default
  W<-distance(M)-sqrt(2)
  ################
  Score<-as.matrix(1+-2/(1+exp(-W*S)))
  return(mean(Score,na.rm = T))
}

