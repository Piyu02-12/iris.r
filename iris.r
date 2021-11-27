#download the data set
iris <-datasets::iris

head(iris,10)

tail(iris, 10)

# columns
iris[,c(1,2)]

df3 <-iris[,-5]
df3

summary(iris[,1])

summary(iris[,2])

iris$Petal.Length

summary(iris$Petal.Width)

summary(iris)

plot(iris$Sepal.Length)

plot(iris$Species,iris$Petal.Length,type="p")

plot(iris)


# type = lines 
plot(iris$Petal.Width, type= "l") # p: points, l: lines,b: both

# type = points  
plot(iris$Sepal.Width, type= "p") # p: points, l: lines,b: both

# points and lines(both) 
plot(iris$Petal.Length, type= "b") # p: points, l: lines,b: both


plot(iris$Sepal.Length, xlab = 'samples', 
     ylab = 'No of Instances', main = 'types of samples',
     col = 'red' , type = "l")

# Horizontal bar plot
barplot(iris$Petal.Length, main = 'length of petals',
        ylab = 'petal.length', col= 'green',horiz = F,axes=T)

#Histogram
hist(iris$Sepal.Length , col = 'red')

hist(iris$Petal.Width, 
     main = 'width of petals',
     xlab = 'petal.length', col='blue')

#Single box plot
boxplot(iris$Sepal.Width ,main="Boxplot")

boxplot.stats(iris$Sepal.Width)$out

# Multiple box plots
boxplot(iris[,1:4],main='Multiple')


par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(iris$Petal.Width)
plot(iris$Petal.Length , iris$Sepal.Length)

plot(iris$Petal.Width, type= "l")
plot(iris$Petal.Length, type= "l")
plot(iris$Sepal.Length, type= "l")
barplot(iris$Sepal.Width, main = 'width of sepal',
        xlab = 'sepal.width', col='red',horiz = FALSE)

hist(iris$Sepal.Length)
boxplot(iris$Sepal.Width)
boxplot(iris[,0:4], main='Multiple Box plots')

#standard deviation
sd(iris$Sepal.Width ,na.rm = T)

var(iris$Sepal.Length)

skewness(iris$Petal.Length)

kurtosis(iris$Petal.Width)

mean(iris$Sepal.Length)

median(iris$Sepal.Width)





