#download the data set
equakes <-datasets::quakes

#top 10 data set
head(equakes , 10)

#last 10 data set
tail(equakes , 10)

# columns
equakes[,c(1,2)]

df2 <-equakes[,-6]
df2

summary(equakes[,1])

summary(equakes[,2])

equakes$long        

summary(equakes$long)

summary(quakes)

plot(equakes$depth)

plot(quakes$long,quakes$depth,type="p")

plot(quakes)

# points and lines 
plot(quakes$long, type= "l") # p: points, l: lines,b: both

# points and lines 
plot(quakes$depth, type= "p") # p: points, l: lines,b: both

plot(quakes$mag, xlab = 'earthquake', 
     ylab = 'No of Instances', main = 'earthquake levels in NY city',
     col = 'red' , type = "l")

# Horizontal bar plot
barplot(quakes$depth, main = 'earthquake effect level',
        ylab = 'mag', col= 'green',horiz = F,axes=T)

#Histogram
hist(quakes$depth , col = 'red')

hist(quakes$long, 
     main = 'earthquake magnitude',
     xlab = 'mag.', col='blue')

#Single box plot
boxplot(quakes$mag,main="Boxplot")

boxplot.stats(quakes$mag)$out

# Multiple box plots
boxplot(quakes[,1:4],main='Multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(quakes$long)
plot(quakes$long, quakes$mag)

plot(quakes$long, type= "l")
plot(quakes$long, type= "l")
plot(quakes$depth, type= "l")
barplot(quakes$depth, main = 'earthquake',
        xlab = 'depth', col='red',horiz = FALSE)
hist(quakes$station)
boxplot(quakes$depth)
boxplot(quakes[,0:4], main='Multiple Box plots')

#standard deviation
sd(quakes$mag,na.rm = T)

var(quakes$depth)

skewness(quakes$mag)

kurtosis(quakes$depth)

mean(quakes$depth)

median(quakes$mag)



