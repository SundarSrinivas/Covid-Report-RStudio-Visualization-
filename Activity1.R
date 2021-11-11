#data collected on 24 Aug 2021 by Sundar Srinivas Tippavajhala
covid = read.csv("covid.csv")
attach(covid)
covid
highest <- data.frame(covid[order(-Total.Cases),])
highest
high = highest[c(1:10),c(1,2)]

#How to visualize the top 10 states with the highest number of total cases?


barplot(high[,2],col = "cyan", names.arg = high[,1], las = 2)

#How to visualize the total number of cases, number of cases reported, number of people discharged and number of deaths in the top 5 states?


top_5 = covid[c(1:5),]
top_5
Andaman = c(7560, 10, 7421, 129)
Andhra = c(2004590, 10, 1977163, 13750)
Arunachal = c(52409, 1127, 51023, 259)
Assam = c(585689, 8005, 572084, 5600)
Bihar = c(725605, 102, 715853, 9650)
bplot <- data.frame(Andaman, Andhra, Arunachal, Assam, Bihar)
bplot = as.matrix(bplot)
barplot(bplot, col = c("brown", "red", "maroon", "pink"), beside = TRUE)

#How has the death ratio changed over the period of time (Month on Month change)?


death_ratio = Deaths/Total.Cases
barplot(death_ratio, col = "limegreen",names.arg = State.UTs, las = 3)

#"Divide the total number of active cases into 4 equal parts?"


divide_by4 = quantile(Active)
barplot(divide_by4)

