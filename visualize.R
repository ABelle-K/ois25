population <- numeric(52)
 population[1] <- 2000

population_2 <- c(52:0)
croissance_population_2 <- seq(52, 0, by = -1)

 for (semaine in 2:52) {
  population[semaine] <- round(population[semaine - 1] * 0.9)
 
 }
observationID <- 1:52
populations <- population

plot(observationID, populations,
     xlab = "observationID",
     ylab = "populations",
     cex.lab = "2",
     main = "Evolution des lamproies et des saumons",
     col = "purple",
     type = "l",
     lwd = "3")
lines(population_2, croissance_population_2,
      type = "b",
      col = "red",
      lwd = 4)
legend("topright",
       legend = c("Lamproies","Saumons"),
       col = c("purple","red"),
       lty = c(1,1)
       )