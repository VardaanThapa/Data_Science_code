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


## Fights data
library(dplyr)
library(nycflights13)
flts <- nycflights13::flights
dim(flts)
class(flts)
flts

filter(df,x==1 | y=="b")
a

arrange(df,desc(x))
flts

select(flts,-(1:3))

flts["test"] <- "test"
flts <- as.data.frame(flts)
flts["gain"] <- flts$arr_delay - flts$dep_delay
flts["gain"]


flts <- mutate(flts,gained=arr_delay-dep_delay,
       speed= distance/air_time * 60)

flts$gained


sample_n(flts,10)
sample_frac(flts,0.001)
