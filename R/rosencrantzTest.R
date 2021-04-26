#' Simulates a Rosencrantz Experiment
#'
#' Simulates flipping a coin until it has come up with the same result
#' some specified number of times in a row, and returns how many attempts
#' it took.
#'
#' @param rNumber the number of repeated outcomes to stop at
#' @param seed a random seed, for repeatable results, otherwise the function
#' will initialize the random number generator with the system time
#' @param upTo if TRUE the function will perform and return the results of all
#' tests from 1 up to the rNumber. Useful for demonstrations and plotting.
#' @export
#' @examples
#' rosencrantzTest( rNumber = 5, seed = 1, upTo = FALSE )

rosencrantzTest <- function( rNumber = 1, seed = NA, upTo = FALSE ) {

  if (rNumber < 1) { print("r number must be >= 1"); return() }

  if ( is.na(seed) ) {
    set.seed(Sys.time())
  } else {
    set.seed(seed)
  }

  outcomes <- c("heads", "tails")

  trials <- 0
  lastResult <- ""
  newResult <- ""
  consecutive <- 1
  trialStore <- NA

  if (upTo) {
    for (i in 1:rNumber) {
      trialStore[i] <- rosencrantzTest(rNumber = i, seed = seed, upTo = FALSE)
    }
    return(trialStore)
  }


  while ( consecutive != rNumber) {
    newResult <- sample(outcomes, size = 1)

    if ( newResult == lastResult ) {
      consecutive <- consecutive + 1
    } else {
      consecutive <- 1
    }
    lastResult <- newResult
    trials <- trials + 1
  }

  return(trials)

}
