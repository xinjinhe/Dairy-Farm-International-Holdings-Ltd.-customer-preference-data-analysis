#this study investigates consumer preference in different milk attributes based on eight factors
#x1: Taste
#x2: Fact content
#x3: High quality certification
#x4: Origin
#x5: Price
#x6: Organic certification
#gender; level of education
library(psych)
library(reshape2)
library(ggplot2)
library(forecast)

#load the milk RData
setwd("/Users/clairehe/Desktop")
milk<-load("milk.RData")
head(milk)


#standardize data and then do cluster analysis on variable x1-x6;
x<-scale(milk[,2:7])
dist<-dist(x,method="euclidean")^2

fit <- hclust(dist, method="ward.D")
fit
history<-cbind(fit$merge,fit$height)

#plot according dendrogram
ggplot(mapping=aes(x=(379:399),y=fit$height[379:399]))+
  geom_line()+
  geom_point()+
  labs(x="stage",y="height")
#then we can find how many clusters fit
par(mar=c(1,4,1,1))
plot(fit,hang=-1,main="")

#from graph we conduct a 3-cluster analysis
cluster<-cutree(fit,k=3)
sol <- data.frame(cluster,x)

table(cluster)
tb<-aggregate(x=x, by=list(cluster=sol$cluster),FUN=mean)
tb


#to further validate and to get more information relating to these three clusters, we use K-means method to find out according centers and sizes
#here K-means use the default Hartigan and Wong algorithm
set.seed(123)
fit1<-kmeans(x=x,centers=3)
fit1

tb1<-data.frame(cluster=1:3,fit1$centers)
tbm<-melt(tb1,id.vars='cluster')
tbm$cluster<-factor(tbm1$cluster)
ggplot(tbm, 
       aes(x = variable, y = value, group = cluster, colour = cluster)) + 
  geom_line(aes(linetype=cluster))+
  geom_point(aes(shape=cluster)) +
  geom_hline(yintercept=0) +
  labs(x=NULL,y="mean")

#after analyzing customers' clustered preference on factor x1-x6, we then try to find how data relates to gender and educational level 
tb<-table(fit1$cluster,milk[,"edu"])
prop.table(tb,margin=1)

aggregate(milk$edu,by=list(fit1$cluster),FUN=mean)

tb<-table(fit1$cluster,milk[,"gender"])
prop.table(tb,margin=1)

aggregate(milk$gender,by=list(fit1$cluster),FUN=mean)

#finally we conduct proper data analysis, ie, find variance, mean expected value on gender and education
chisq.test(tb)
fit2<-lm(milk$edu~as.factor(fit1$cluster))
anova(fit2)
