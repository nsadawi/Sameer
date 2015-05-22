data = read.csv("~/Sameer/filtered_data.csv",header=T)
pairs(data)
m = lm(q ~ cu, data=data)
m

layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page

plot(q ~ cu, main="Q and CU",data=data)
abline(m, col="red")
#http://ww2.coastal.edu/kingw/statistics/R-tutorials/simplelinear.html
par(mfrow=c(2,2))
plot(m)

data[17,]
data[23,]
data[25,]
par(mfrow=c(1,1)) 
plot(cooks.distance(m))
