rolldice <- function(nSides = 6, nDice = 1, nRolls = 1) {

  outcomes <- c(1:nSides)
  results <- list()

  for (i in 1:nRolls) {
    results[[i]] <-  sample(outcomes, size = nDice, replace = TRUE)
  }


  return(results)
}
