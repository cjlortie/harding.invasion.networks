```{r, practice code, message=FALSE}

#data
#data <-read.csv("data/vertebrates.csv")
#str(data) #check dataframe
#data$rep.day <-as.factor(data$rep.day) #r did not know day was a factor
#data$transect <-as.factor(data$transect) #r did not know day was a factor
#str(data)

#visualize####
#base-r
#hist(data$abundance, main="", xlab="abundance")
#bwplot(abundance~rep.day | site, data=data) #lattice package
#hist(data$diversity, main="", xlab="diversity")
#bwplot(diversity~rep.day | site, data=data) #lattice package

#ggplot2
#qplot(abundance, data=data)
#qplot(rep.day, abundance, data=data, geom="boxplot", facets = site~.)
#qplot(diversity, data=data)
#qplot(rep.day, diversity, data=data, geom="boxplot", facets = site~.)

#now explore by harding.cover
#base-r
#plot(abundance~harding.cover, data = data)
#abline(lm(abundance~harding.cover, data=data))
#plot(diversity~harding.cover, data = data)
#abline(lm(diversity~harding.cover, data=data))

#lattice
#bwplot(abundance~harding.cover | site, data=data)
#bwplot(diversity~harding.cover | site, data=data)

#ggplots
#qplot(harding.cover, abundance, data=data, geom="smooth", method="lm")
#qplot(harding.cover, diversity, data=data, geom="smooth", method="lm")

#EDA
#m1<-glm(abundance~harding.cover, family=gaussian, data=data)
#m1
#anova(m1)
#pv <- summary(m1)$coefficients[, "Pr(>|t|)"] 
#pv

#m2<-glm(diversity~harding.cover, family=gaussian, data=data)
#m2
#anova(m2)
#pv <- summary(m2)$coefficients[, "Pr(>|t|)"] 
#pv

```