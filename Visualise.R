 population <- numeric(52)
 population[1] <- 2000
 for (semaine in 2:52) {
  population[semaine] <- round(population[semaine - 1] * 0.9)
 }
observationID <- 1:52
populations <- population
plot(observationID, populations,
     xlab = "observationID",
     ylab = "populations",
     cex.lab = "2",
     main = "Evolution des poissons exposés à des substances chimiques",
     col = "purple",
     type = "l",
     lwd = "3")