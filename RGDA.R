data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth, dose==0.5)
view(filtered_tg)

arrange(filtered_tg)

##pipe: nested functions
arrange(filter(ToothGrowth, dose==0.5))

filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  arrange(len) %>%

  #DATA FRAMES: def way to interact with Data
data("diamonds")
View(diamonds)
str(diamonds)



install.packages("palmerpenguins")

library(palmerpenguins)
library(ggplot2)

# Use the penguins dataset directly
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#aes:mapping an aesthetic to the variable
#shape, color to highlight the different penguin species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species,alpha=species))

#to apply the aesthetics for the entire plot we can put the mapping outside aes function.
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color='red')
#geom_smooth
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#geom_bar: apply for diamond dataset
#facets: new patterns in the data and helps in finding relationship between different variables
#facet_wrap():separate plot fro each species
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species))+facet_wrap(~species)

#facet_grid: 

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)

#labels:
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass Vs Flipper Length", subtitle = "Sample of 3 Penguin Species",caption="data was colletced by Kristen")

#annotate
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass Vs Flipper Length", subtitle = "Sample of 3 Penguin Species",caption="data was colletced by Kristen")+
  annotate("text",x=220,y=3500,label='The Gentoons are the largest',color='purple',fontface='bold',size=4.5)

#saving plots: last created plot will be saved
ggsave("Three Penguin Species.jpg")

#R-Markdown:
install.packages("rmarkdown")







