
#loaded data:
jinshenlu<-read.delim(file=file.choose(),header = TRUE, stringsAsFactors = FALSE)
par(family = 'Heiti SC Light')

#Area comparison:
diqu<-jinshenlu[,c("diqu")]
diqu_frequency<-table(diqu)

barplot(diqu_frequency, main="diqu distribution", 
        xlab="diqu",family = "Heiti SC Light")

pie(diqu_frequency, cex=.5)

#sort diqu frequency:
diqu_frequency_sort<-diqu_frequency[order(-diqu_frequency)]
diqu_frequency_sort_bar <- barplot(diqu_frequency_sort[1:5], las=2, cex.names=.5, main="diqu sorted distribution with percentage", 
        xlab="diqu")
text(x = diqu_frequency_sort_bar, y = diqu_frequency_sort[1:5] - 5000, label = diqu_frequency_sort[1:5] / sum(diqu_frequency_sort) * 100, cex = 0.5)

diqu_frequency_sort_pie <- pie(diqu_frequency_sort[1:5], cex=.5, main="First five most common Diqu")

#chushen comparison
chushen_1<-jinshenlu[,c("chushen_1")]
chushen_1_frequency<-table(chushen_1)
chushen_1_frequency_sort <- chushen_1_frequency[order(-chushen_1_frequency)]
barplot(chushen_1_frequency_sort[1:5], las=2, cex.names=.5)
pie(sort(chushen_1_frequency)[1:5], cex=.5)