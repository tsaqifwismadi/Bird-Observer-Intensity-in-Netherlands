# buat facet bar plot 
library(ggplot2)
require(reshape2)
require(ggplot2)

dt <- FI_val

ggplot(dt, aes(Group, Value)) +
  geom_bar(aes(fill = Variable), position = "dodge", stat="identity", width=.5) +
  theme_bw(base_size = 12) +  # utk buat line hitam dibawah grid tiap box
  facet_grid (. ~ Group, scales="free") + #grid diatur dgn Season sbg y dan Location sbg x
  #guides(x = guide_axis(angle = 90)) +  #angle 90 utk buat axis vertical
  ylab('Value') + xlab('The relative importance FI scores')



# try stacked bar
ggplot(dt,  # Stacked barplot using ggplot2
       aes(x = Group,
           y = Value,
           fill = Variable)) +
  geom_bar(stat = "identity")


# separate stack 
dt <- Spat_FI
# Stacked
ggplot(dt, aes(fill=Variable, y=Value, x=Group)) + 
  geom_bar(position="stack", stat="identity")



# separate stack 
dt <- Temp_FI
# Stacked
ggplot(dt, aes(fill=Variable, y=Value, x=Group)) + 
  geom_bar(position="stack", stat="identity")

