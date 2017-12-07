#'
#'
#'
#' @export
#'
##optimal function
####Heuristic Algorithm
HA <- function(M, S, N = 100){
  #M is the init pos matrice
  M_max<-M
  #S is the combined score
  P_max<-costfun(M_max, S = s)
  re_p<-NULL
  re_M<-list()
  ##########
  Re_M<-list()
  Re_M[[1]]<-M_max
  Re_p<-P_max

  K<-1
  for(k in 1:N){
    re_p<-NULL
    re_M<-list()
    for(j in 1:10){#迭代100次

      M<-M_max
      for(i in 1:10){##试算
        n<-sample(2:3,1)
        if(n==2){
          idx<-sample(1:length(M),2)
          tem<-M[idx[1]]
          M[idx[1]]<-M[idx[2]]
          M[idx[2]]<-tem
        }else{
          idx<-sample(1:length(M),3)
          M[sample(idx)]<-M[idx]
        }
        re_p<-rbind(re_p,costfun(M, S = s))
        re_M[[i]]<-M
      }


      idx<-order(re_p,decreasing = T)[1]
      if(re_p[idx]>max(Re_p)){

        P_max<-re_p[idx]

        M_max<-re_M[[idx]]
        Re_M[[K+1]]<-M_max
        Re_p<-rbind(Re_p,P_max)
        print('找到更优的值')
        print(P_max)
        K<-K+1
        break
      }
      re_p<-NULL
    }
    print(k)
  }

  return( list(result_cost = Re_p, result_M = Re_M))
}
