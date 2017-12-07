
#'
#'
#'
#'
#' @export
#'

#make initial  positions picture by matrix
initpos <- function(n, ncol = 5, nrow = 5, ...){
  if(n > ncol*nrow)
    stop('error, number of points should bigger than the matirx')

  M<-matrix(NA,ncol=ncol,nrow = nrow)
  ####
  l<-c(1:length(M))

  idx<-sample(l,n,replace = F)

  M[idx]<-1:n

  return(M)
}
