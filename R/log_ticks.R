# BastiHzR - A personal R Package With Miscellaneous Stuff
# Copyright (C) 2019 Sebastian Henz
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.


#' Logarithmic tick marks
#'
#' Calculate the position of major and minor ticks for a log10 axis.
#'
#' @param x The values of the axis in question.
#' @param log Logical indicating if x is already logarithmic. Defaults to
#'   \code{FALSE}.
#'
#' @return A list containing a vector each of the major and minor tick mark
#'   positions which is intended to be used in conjuncton with \code{axis}, see
#'   examples.
#'
#' @examples
#' x <- 10^seq(1, 4, length.out = 100)
#' ticks <- log_ticks(x)
#' plot(x, stats::rnorm(100), log = "x", xaxt = "n")
#' axis(1, at = ticks$major_ticks)
#' axis(1, at = ticks$minor_ticks, labels = FALSE, tcl = -0.25)
#'
#' # Use log = TRUE for input that is already logarithmic:
#' x2 <- log10(x)
#' ticks2 <- log_ticks(x2, log = TRUE)
#' @export
log_ticks <- function(x, log = FALSE) {
    if (!log) {
        x <- log10(x)
    }
    major_ticks <- 10 ^ seq(
        floor(min(x, na.rm = TRUE)),
        ceiling(max(x, na.rm = TRUE))
    )
    major_ticks <- as.integer(major_ticks)  # prevent scientific notation
    n_between <- length(major_ticks) - 1
    minor_ticks <- integer(n_between * 8)
    for (i in 1:n_between) {
        a <- major_ticks[i]
        b <- major_ticks[i+1]
        minor_ticks[seq(i * 8 - 7, i * 8)] <- seq(a + a, b - a, a)
    }
    list(major = major_ticks, minor = minor_ticks)
}
