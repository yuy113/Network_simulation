
getwd()

rm(list=ls())
#set up working directory to the folder directory of RData of simulation results
setwd("/Users/yubingyao/Documents/Network analysis/R code/")
simruslt.er.summary<-function(datname,filename){
  
  
  dat_load<-load(file=datname)
  
  ER_clustersize50_p03.simresult<-filename
  rm(list = c(dat_load, "dat_load"))
  ls()
  matrix.result.e<-lapply(ER_clustersize50_p03.simresult[[2]],function(x){matrix(unlist(x),ncol=  length(unlist(ER_clustersize50_p03.simresult[[2]][[1]][[1]]))
,byrow=T)})
  


mean.matrix.result.e<-matrix(0,ncol=dim(matrix.result.e[[1]])[2],nrow=dim(matrix.result.e[[1]])[1])


  for (i in 1:length(matrix.result.e)){
    if (dim(matrix.result.e[[i]])[1]==dim(matrix.result.e[[1]])[1]){
    mean.matrix.result.e=mean.matrix.result.e+matrix.result.e[[i]]}
    
    if (dim(matrix.result.e[[i]])[1]==(dim(matrix.result.e[[1]])[1]-1)){
      mean.matrix.result.e=mean.matrix.result.e+rbind(matrix.result.e[[i]],c(1,0,0,0,1,0))}
    
    
  }
  
  
  matrix.result.n<-lapply(ER_clustersize50_p03.simresult[[1]],function(x){matrix(unlist(x),ncol=  length(unlist(ER_clustersize50_p03.simresult[[2]][[1]][[1]]))
,byrow=T)})
  
  
  
  mean.matrix.result.n<-matrix(0,ncol=dim(matrix.result.n[[1]])[2],nrow=dim(matrix.result.n[[1]])[1]
)
  for (i in 1:length(matrix.result.n)){
    
    mean.matrix.result.n=mean.matrix.result.n+matrix.result.n[[i]]
  }
  list(mean.matrix.result.n/length(matrix.result.n),  mean.matrix.result.e/length(matrix.result.e))

  
  
 
  
}










ERnew2_clustersize20_p03.simresult<-simruslt.er.summary("ERnew2_clustersize20_p3.Rdata",result1.sim21)

ERnew_clustersize20_p01.simresult<-simruslt.er.summary("ERnew2_clustersize20_p1.Rdata",result1.sim22)

ERnew2_clustersize50_p03.simresult<-simruslt.er.summary("ERnew2_clustersize50_p3.Rdata",result1.sim11)

ERnew2_clustersize50_p01.simresult<-simruslt.er.summary("ERnew2_clustersize50_p1.Rdata",result1.sim12)


BAnew2_clustersize20_power15_m24.simresult<-simruslt.er.summary("BAnew2_clustersize20_power15m24.Rdata",result1.sim121)


BAnew2_clustersize20_power15_m77.simresult<-simruslt.er.summary("BAnew2_clustersize20_power15m77.Rdata",result1.sim121)

BAnew2_clustersize50_power15_m24.simresult<-simruslt.er.summary("BAnew2_clustersize50_power15m24.Rdata",result1.sim121)


BAnew2_clustersize50_power15_m77.simresult<-simruslt.er.summary("BAnew2_clustersize50_power15m77.Rdata",result1.sim121)

###########################################################################################################################
#simulation result 
BAnew1_clustersize50_power15_m24.simresult<-simruslt.er.summary("BAnew_clustersize50_power15m24.Rdata",result1.sim12)

BAnew1_clustersize50_power15_m77.simresult<-simruslt.er.summary("BAnew_clustersize50_power15m77.Rdata",result1.sim11)

BAnew1_clustersize20_power15_m77.simresult<-simruslt.er.summary("BAnew_clustersize20_power15m77.Rdata",result1.sim21)

BAnew1_clustersize20_power15_m24.simresult<-simruslt.er.summary("BAnew_clustersize20_power15m24.Rdata",result1.sim22)


ERnew1_clustersize20_p03.simresult<-simruslt.er.summary("ERnew_clustersize20_p3.Rdata",result2.sim21)

ERnew1_clustersize20_p01.simresult<-simruslt.er.summary("ERnew_clustersize20_p1.Rdata",result2.sim22)

ERnew1_clustersize50_p03.simresult<-simruslt.er.summary("ERnew_clustersize50_p3.Rdata",result2.sim11)

ERnew1_clustersize50_p01.simresult<-simruslt.er.summary("ERnew_clustersize50_p1.Rdata",result2.sim12)


##############################################################################################################


