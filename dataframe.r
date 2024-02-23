DATA FRAMES:

dframe<-data.frame(Sname=c("sai","dinesh","aravind"),
                   + age=c(20,18,28),
                   + weight=c(55,58,60),
                   + height=c(168,165,164),
                   + sex=c("M","M","M"))
> dframe
Sname age weight height sex
1     sai  20     55    168   M
2  dinesh  18     58    165   M
3 aravind  28     60    164   M

> dframe$sex=ifelse(dframe$sex=="M","F","M")
> dframe
Sname age weight height sex
1     sai  20     55    168   F
2  dinesh  18     58    165   F
3 aravind  28     60    164   F
>
  
  
  
  dframe<-data.frame(Sname=c("sai","dinesh","aravind"),
                      + age=c(20,18,28),
                      + weight=c(55,58,60),
                      + height=c(168,165,164),
                      + sex=c("M","M","M"),
                      + StringAsFactors=FALSE)
  
  
  > df<-data.frame(
    + Sname=c("sai","dinesh","aravind"),
    + working=c("yes","yes","NO"))
> combine=cbind(dframe,df)
> combine
Sname age weight height sex StringAsFactors   Sname working
1     sai  20     55    168   M           FALSE     sai     yes
2  dinesh  18     58    165   M           FALSE  dinesh     yes
3 aravind  28     60    164   M           FALSE aravind      NO

