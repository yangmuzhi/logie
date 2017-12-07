##'
##' 优化位置矩阵
##' @param M 位置矩阵
##' @param S 综合因素矩阵
##' @param N 计算的循环次数
##' @return 返回一个\code{list}的数据结构
##' \code{list(result_cost, result_M )}
##' 包含得到的较优解记录和位置矩阵的记录
##'
##'   costfunction to evaule the method.
##' @export

####
#x <- HA(M = initpos(14,5,5), S = s, N = 100)
logie.optimal <- function(M, S, method = 'HA', HA.N = 100){

  switch (method,
          HA = HA(M, S, N = HA.N)

  )

}
