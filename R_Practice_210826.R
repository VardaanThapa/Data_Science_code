1+2+"a"

x<-c(5,12.5,12,23)
y<-c(1,2,3,0)

x[2]<-3
x

a="x"
x[x<20]
x[1:2]
a="abs"
df<- data.frame(x=1:3, y=c("a","b","c"))
df
df[1,1]
df[1,]
df[c(1,3),2]
df[c(1,3),1]
df[c(1,3),]

df$x

library(dplyr)
airquality <- datasets::airquality
typeof(df)
class(df)

head(airquality,10)
summary(airquality)


plot(airquality$Wind)

plot(airquality$Wind,airquality$Temp,type="p")

plot(airquality$Wind,airquality$Temp, xlab="xaxis",ylab="yaxis",main="chart", col="blue")

barplot(airquality$Wind)

hist(airquality$Wind)

boxplot(airquality$Wind)

plot(airquality$Wind)
plot(airquality$Wind)
plot(airquality$Wind)
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
