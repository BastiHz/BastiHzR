#' Round towards a multiple of n
#'
#' Round x up or down to the nearest multiple of n.
#'
#' @param x The value to round.
#' @param n The value which determines the rounding target.
#'
#' @note Symmetrical rounding to the next power of ten can also be archived
#'   using \code{\link[base]{round}} with a negative \code{digits} argument.
#'
#' @examples
#' round_to_next_multiple(120, 50)  # 100
#' round_to_next_multiple(17, 5)  # 15
#' floor_to_next_multiple(195, 100)  # 100
#' ceiling_to_next_multiple(10.3, 2)  # 12
#'
#' @export
round_to_next_multiple <- function(x, n) {
    round(x / n) * n
}


#' @rdname round_to_next_multiple
#' @export
ceiling_to_next_multiple <- function(x, n) {
    ceiling(x / n) * n
}


#' @rdname round_to_next_multiple
#' @export
floor_to_next_multiple <- function(x, n) {
    floor(x / n) * n
}
