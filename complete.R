complete <- function(directory, id=1:332)
{
  count=rep(0,length(id))
  for(i in seq_along(id))
  {
    if(id[i]<10) filename=paste(directory,"/00",id[i],".csv",sep = "")
    if(9<id[i] & id[i]<100) filename=paste(directory,"/0",id[i],".csv",sep = "")
    if (id[i]>99) filename=paste(directory,"/",id[i],".csv",sep = "")
    temp=read.csv(filename)
    count[i]=sum(complete.cases(temp))
    
  }
  
  data.frame(id=id,nobs=count)
  
}