#Instalando os pacotes e ativando-os
install.packages('Tmisc')
library(Tmisc)
install.packages('tidyverse')
library(tidyverse)
data("quartet")
View(quartet)
install.packages('datasauRus')
library(datasauRus)

#Criandos medidas agrupadas
View(quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y)))

#Criando gráficos
ggplot(quartet,aes(x,y))+geom_point()+geom_smooth(method=lm,se=FALSE)+facet_wrap(~set)

#Criando gráficos
ggplot(datasaurus_dozen,aes(x=x,y=y,color=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset)
