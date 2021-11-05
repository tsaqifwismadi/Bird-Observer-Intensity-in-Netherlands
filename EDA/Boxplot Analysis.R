#  boxplot
library(ggplot2)
require(reshape2)
require(ggplot2)

# boxplot obs - Mon
dt <- Mon_OI_boxplot
ggplot(dt, aes(x, y, group=x)) + geom_boxplot() +
  # kalau remove outlier pakai outlier.shape = NA
  theme_bw(base_size = 12) +  # beri neatline di tiap box
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank()) +  # remove grid
  #g + stat_summary(fun.data = calc_stat, geom="boxplot", width=0.75) +
  #geom_smooth(method = "lm", se=TRUE, color="red", aes(group=1))+
  ylab('Observer Intensity') + xlab('Month')



# boxplot obs - Mon
dt <- Obs_day_boxplot
ggplot(dt, aes(x, y, group=x)) + geom_boxplot() +
  # kalau remove outlier pakai outlier.shape = NA
  theme_bw(base_size = 12) +  # beri neatline di tiap box
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank()) +  # remove grid
  #g + stat_summary(fun.data = calc_stat, geom="boxplot", width=0.75) +
  #geom_smooth(method = "lm", se=TRUE, color="red", aes(group=1))+
  ylab('Observer Intensity') + xlab('Day')
