
#loaded data:
jinshenlu=read.delim(file=file.choose(),header = TRUE, stringsAsFactors = FALSE)

#Area comparison:
diqu = jinshenlu[,c("diqu")]
diqu_frequency = table(diqu)

barplot(diqu_frequency, main="diqu distribution", 
        xlab="diqu",family = "Heiti SC Light")
barplot(diqu_frequency, las=2, cex.names=.5)
pie(diqu_frequency, cex=.5)

#chushen comparison
chushen_1 = jinshenlu[,c("chushen_1")]
chushen_1_frequency = table(chushen_1)
barplot(chushen_1_frequency, las=2, cex.names=.5,family = "Heiti SC Light")
pie(chushen_1_frequency, cex=.5)