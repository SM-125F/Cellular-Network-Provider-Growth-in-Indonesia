#set directory
setwd("F:\\DATA ANALYST\\Portfolio\\Cellular")
getwd()

#load data
cellular <- read.csv("jumlah-perkembangan-pelanggan-seluler - prepared.csv")
head(cellular)
str(cellular)
cellular$Tahun <- factor(cellular$Tahun)

#add column
cellular$PrabayarPercentage <- round((cellular$Prabayar/cellular$Jumlah)*100,2)
cellular$PascabayarPercentage <- round((cellular$Pascabayar/cellular$Jumlah)*100,2)

#drop column
#cellular = subset(cellular, select=-PrabayarPercentage)
#cellular = subset(cellular, select=-PascabayarPercentage)

#plot
library(ggplot2)
graph_cell <- ggplot(data=cellular, aes(x=Brand, y=PrabayarPercentage))
graph_cell+
  geom_col(aes(fill=Brand))+
  facet_grid(.~Tahun)+
  ylab("Prabayar per SUM of Subscriber (%)")+
  ggtitle("Prabayar Service Percentage")+
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        plot.title = element_text(size=15, hjust=0.5))

                    