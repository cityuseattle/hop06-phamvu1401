library(BSDA)

#Read the samples from the csv file
per_vol_2Samples <- read.csv("Perfume Volumes 2 Sample.csv")

View(perf_vol_2Samples)

#Conduct two-samples z test
zTest <- z.test(x = perf_vol_2Samples$Machine1, y = perf_vol_2Samples$Machine2,
                sigma.x = sd(perf_vol_2Samples$Machine1),
                sigma.y = sd(perf_vol_2Samples$Machine2), mu=-1.0)
print(zTest)                