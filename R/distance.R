#'计算矩阵之间的距离
#'
#' @param M 初始化生成的相对矩阵
#'
#' @author muzhiyang
#' @return \code{M} 矩阵中点的相对距离，返回一个 n x n的距离矩阵
#' @examples
#' initpos(14, 5, 5)
#' M  <- initpos(n = 14, ncol = 5, nrow = 5)
#' distance(M)
#' @export
#'



#####
###calulate the distance between any points
distance <- function(M, ...){
  ###this function need to be optimalized
  #
  #confirm the isnot NA which is the number of points
  #
  npoints <- sum(!is.na(M))
  D <- matrix(0, ncol = npoints, nrow = npoints)
  x.pos <- 1:npoints
  y.pos <- 1:npoints
  for(i in 1:npoints){
    w <- which(M == i,arr.ind = T)
    x.pos[i] <- w[1]
    y.pos[i] <- w[2]
  }##position
  W <- matrix(NA,ncol = npoints,nrow = npoints)

  for(i in 1 : npoints){
    for(j in 1 : npoints){
      if(i!=j){
        #distance
        W[i,j] <- sqrt((x.pos[i] - x.pos[j])^2 + (y.pos[i] - y.pos[j])^2)
      }
    }
  }
  return(W)  ##return a npoints x npoints matrice
}
