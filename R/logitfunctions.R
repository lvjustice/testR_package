#' Function to calculate log odds
#'
#' Function to calculate the log odds, also known as the logits.
#'
#' @param p A numeric vector of probabilities
#'
#' @return A numeric vector of the log odds
#' @export
#'
#' @examples
#' p <- c(0.25, 0.5, 0.75)
#' logit(p)




logit <- function(p) {
  log(p/(1-p))
}


#' Function to calculate inverse log odds
#'
#' Function to calculate the inverse log odds also known as inverse logits.
#'
#' @param x A numeric vector of negative or positive values
#'
#' @return A vector of probabilities
#' @export
#'
#' @examples
#' x <- rnorm(10)
#' invlogit(x)


invlogit <- function(x) {
  1/(1 + exp(-x))
}
