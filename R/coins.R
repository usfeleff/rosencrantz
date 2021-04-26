#' Simulates a coin flip
#'
#' Simulates flipping a single (fair) coin some number of times
#'
#' @param nTimes the number of times to flip
#' @return returns the results as a list
#' @export
#' @examples
#' flipCoin( nTimes = 1 )
flipCoin <- function(nTimes = 1) {
  outcomes <- c("heads", "tails")
  results <- list()

  for (i in 1:nTimes) {
    results[[i]] <-
     sample(outcomes, size = 1, replace = TRUE)
  }

  return(results)
}
