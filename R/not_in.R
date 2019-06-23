#' Negation of \%in\%
#'
#' Provides a "not in" like in Python that is in my opinion prettier than
#' \code{!x \%in\% y}.
#'
#' \code{!x \%in\% y} works, too, because \code{\%in\%} takes precedence before
#' \code{!}, see \link[base]{Syntax}.
#'
#' @param a The values to be matched.
#' @param b The values to be matched against.
#'
#' @return The negated output of \code{\link[base:match]{\%in\%}}.
#'
#' @name not_in
#' @export
`%!in%` <- function(a, b) {
    !a %in% b
}

# A note on the roxygen comments: The help name must not contain an exclamation
# mark. This is why I wrote "@name not_in". The correct title of the function,
# however, is still included as an alias in the rd file.
