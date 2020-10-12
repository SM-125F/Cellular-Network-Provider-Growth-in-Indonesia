#set directory
setwd("F:\\DATA ANALYST\\Portfolio\\Cellular")
getwd()

#load data
cellular <- read.csv("jumlah-perkembangan-pelanggan-seluler - prepared.csv")
head(cellular)
str(cellular)
cellular$Tahun <- factor(cellular$Tahun)

#plot
library(ggplot2)
library(ggrepel)
install.packages("ggrepel")
graph_cell <- ggplot(data=cellular, aes(x=Brand, y=Jumlah, fill=Brand))
graph_cell+
  geom_col()+
  geom_text_repel(label=cellular$Jumlah, hjust=0.5,
                                      vjust=-0.7, size=3)+
  facet_grid(.~Tahun)+
  ggtitle("Cellular Subscriber Growth in Indonesia \n(2013-2016)")+
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        plot.title = element_text(size=15, hjust=0.5))
