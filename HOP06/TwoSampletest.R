library(BSDA)

#Read the samples from the csv file 
perf_vol_2Samples <- read.csv("Perfume Volumes 2 Sample.csv")

View(perf_vol_2Samples)

#Conduct two-sample z test
zTest <- z.test(x = perf_vol_2Samples$Machine1, y = perf_vol_2Samples$Machine2,
                sigma.x = sd(perf_vol_2Samples$Machine1),
                sigma.y = sd(perf_vol_2Samples$Machine2))


print(zTest)