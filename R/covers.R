#' Covers / Lottery
#'
#' Provides a basic framework to define a lottery type experiment
#'
#' options that may need to be implemented:
#' replacement, in order requirements and powerball
#' an additional function to check results should be implemented
#' after the framework is in place.
#'
#' Still need to add some method of specifying a game starts at 0 instead of 1
#' as is common with pick 2/3/4/5 games.
#'
#' @param pick the number of numbers drawn
#' @param pool the pool size
#' @param replace TRUE if a number can be drawn more than once
#' @param ordered TRUE if the order numbers are drawn/picked affects winning
#' @param powerBall NA for non-powerball games, otherwise requires the size
#' of the powerball pool
#' @return returns the numbers drawn
#' @export
#' @examples
#' cover(pick = 5, pool = 69, replace = FALSE, ordered = FALSE, powerBall = 26)
#' cover(pick = 5, pool = 36, replace = FALSE, ordered = FALSE, powerBall = NA)
cover <- function(pick = 3, pool = 10,
                  replace = TRUE, ordered = TRUE,
                  powerBall = NA) {

  outcomes <- c(1:pool)
  results <- sample(outcomes, pick, replace = replace)

  if (!ordered) { results <- sort(results, decreasing = FALSE) }

  if (!is.na(powerBall)) {
    outcomes <- c(1:powerBall)
    results <- c(results, sample(outcomes, 1))
    }

  return(results)
}
