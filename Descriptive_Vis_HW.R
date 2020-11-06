#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
airquality[,c(1,2)]
df<-airquality[,-6]
summary(airquality[,1])
summary(airquality$Wind)
###########Summary of the data#########
summary(airquality$Temp)
summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')


##Home work
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)

head(e_quakes,10)
tail(e_quakes,10)

e_quakes[1:10,c(3,5)]
e_quakes[-1,]

summary(e_quakes)
summary(e_quakes$depth)

plot(e_quakes$depth)
plot(e_quakes$stations,e_quakes$mag,type="p")
plot(e_quakes$stations,e_quakes$lat,type="l")
plot(e_quakes)

plot(e_quakes$depth,e_quakes$stations,xlab='depth',ylab='station',
     main='depth graph', col='green')

barplot(e_quakes[,3],main = 'depth graph',
        ylab = 'depth', col= 'red',horiz = FALSE,axes=FALSE)

hist(e_quakes$depth)
hist(e_quakes$depth,main='title',xlab='depth range',ylab='count',col='red')


boxplot(e_quakes$depth,main='title',ylab='depth')
summary(e_quakes$mag)
boxplot(e_quakes[,c(3,5)],main='title')

par(mfrow=c(2,3),mar=c(2,5,2,1),  las=0, bty="]")


#variance
var(e_quakes$depth)

#standard deviation
sd(e_quakes$depth,na.rm=FALSE)

#Kernel density plot
plot(density(e_quakes$mag))

#Skewness
library(e1071)

install.packages("e1071")

skewness(e_quakes$mag)

#kurtosis
kurtosis(e_quakes$depth)
