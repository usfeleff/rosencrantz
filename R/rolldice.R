#' Rolls Dice
#'
#' Repeatedly rolls any number of identical, fair dice with configurable sides
#'
#'
#' @param nSides the number of sides each die should have
#' @param nDice the number of dice to roll each time
#' @param nTimes the number of times to roll them
#' @param sum if TRUE then returns the sum of the dice instead of the individual
#' values
#' @return returns the results (individual rolls, or sums) as a list
#' @export
#' @examples
#' rolldice(nSides = 6, nDice = 3, nRolls = 2, sum = FALSE)
rolldice <- function(nSides = 6, nDice = 1, nTimes = 1, sum = FALSE) {

  outcomes <- c(1:nSides)
  results <- list()

  for (i in 1:nTimes) {
    results[[i]] <-
      ifelse(sum,
             sum(sample(outcomes, size = nDice, replace = TRUE)),
             sample(outcomes, size = nDice, replace = TRUE))
  }


  return(results)
}
