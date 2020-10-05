tabel <- read.csv("data/CopyOfrecent-grads.csv")

tabel$Major[1] <- 'Ziekenhuiszorg'
tabel$Major[2] <- 'Geestelijke gezondheidszorg'
tabel$Major[3] <- 'Hulpmiddelen'
tabel$Major[4] <- 'Mondzorg'
tabel$Major[5] <- 'Wijkverpleging'
tabel$Major[6] <- 'Medicijnen'
tabel$Major[7] <- 'Huisartsenzorg'
tabel$Major[8] <- 'Eerstelijnsverblijf'
tabel$Major[8] <- 'Geboortezorg'
tabel$Major_category[1:8] <- 'Zvw'

tabel$Major[9] <- 'Verblijf in een zorginstelling'
tabel$Major[10] <- 'Persoonlijke verzorging en verpleging'
tabel$Major[11] <- 'Medische zorg'
tabel$Major[12] <- 'Dagbesteding'
tabel$Major[13] <- 'Hulpmiddelen'
tabel$Major[14] <- 'Vervoer'
tabel$Major_category[9:14] <- 'Wlz'

tabel$Major[15] <- 'Algemeen'
tabel$Major[16] <- 'Maatwerk'
tabel$Major[17] <- 'Vervoer'
tabel$Major_category[15:17] <- 'Wmo'

tabel <- tabel[1:17,]


colnames(tabel) <- c("Rank","Major_code","Major","Total","Men"
                     ,"Women","Major_category","ShareWomen","Sample_size","Employed"
                     ,"Full_time","Part_time","Full_time_year_round", "Unemployed","Unemployment_rate"
                     ,"Median","P25th","P75th","College_jobs","Non_college_jobs"
                     ,"Low_wage_jobs","Total_bin","temp","Median_bin","Histogram_column"
                     ,"midpoint")

write.csv(x = tabel, file = "data/recent-grads.csv")
