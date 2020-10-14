library(dplyr)
library(readr)

tabel <- read.csv("data/CopyOfrecent-grads.csv")
# in use: midpoint, median, women, man,Unemployment_rate, total
tabel$Major_code <- NULL
tabel$Full_time_year_round <- NULL
tabel$Median_bin <- NULL
tabel$College_jobs <- NULL
tabel$Total_bin <- NULL
tabel$Full_time <- NULL
tabel$Sample_size <- NULL
tabel$Non_college_jobs <- NULL
tabel$Low_wage_jobs <- NULL


viz <- read.csv2("data/viz-4.csv")
viz <- viz %>% filter(Jaar == 2019)
viz$Kosten <- gsub("\\.", "", viz$Kosten)
viz$Kosten <- as.numeric(viz$Kosten)
viz <- filter(viz, Mensen > 100)



tabel <- tabel[1:nrow(viz),]
tabel <- cbind(tabel, viz)

tabel$Major_category <- tabel$Zorgsoort
tabel$Major <- tabel$Subgroep
tabel$Zorgsoort <- NULL
tabel$Subgroep <- NULL
tabel$Total <- tabel$Kostpp
tabel$Median <- tabel$Total
tabel$Total <- tabel$Mensen



#unique(tabel$Zorgsoort)


#tabel %>% filter(Major_category == 'MSZ - dure geneesmiddelen')
#tabel %>% filter(Major_category == 'Hulpmiddelen')
#tabel %>% filter(Median > 10652260190)

#options(scipen=999)

tabel$ShareWomen[is.na(tabel$ShareWomen)] <- 0 # minifix

tabel$Men <- NULL
tabel$Women <- NULL
tabel$ShareWomen2 <- round(tabel$Females / (tabel$Males + tabel$Females),4)
tabel$ShareWomen <- tabel$ShareWomen2
summary(tabel$ShareWomen)
summary(tabel$ShareWomen2)

tabel$Mensen <- NULL
tabel$Males <- NULL
tabel$Females <- NULL
tabel$X <- NULL
tabel$X.1 <- NULL
tabel$X.2 <- NULL
tabel$X.3 <- NULL
tabel$Employed <- NULL
tabel$Part_time <- NULL
tabel$Unemployed <- NULL
tabel$P25th <- NULL
tabel$P75th <- NULL
#tabel$midpoint <- NULL # belangrijk
tabel$Unemployment_rate <- NULL
tabel$Histogram_column <- NULL
tabel$temp <- NULL

#filter(tabel, Major == 'Huisartsenzorg')


write.csv(x = tabel, file = "data/recent-grads.csv")

filter(tabel, Major == 'Huisartsenzorg')
#filter(viz, Zorgsoort == 'Huisartsenzorg')
