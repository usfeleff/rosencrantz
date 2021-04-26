#' Equivalent Odds in Coin Flips
#'
#' Determine how many times in a row you would need a coin flip to end the
#' same way to be equivalent to the odds in question.
#'
#' e.g., 1 in 1 Million is roughly the same as flipping a coin and having
#' it land on heads 20 times in a row.
#' @param oneIn the odds to translate into coin flips
#' @return returns the equivalent number of repeated coin flips
#' @export
#' @examples
#'  rosencrantzEquiv(oneIn = 1000000)
rosencrantzEquiv <- function(oneIn = 1) {
  return(round(-(log(oneIn) / log(0.5))))
}
