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


#' Linearly map numbers
#'
#' Linearly map (scale) one or more numbers from one range to another range.
#' This is the same as linear interpolation.
#'
#' If the input is outside the input range then it will be outside the output
#' range, too.
#'
#' Can also map to ranges where \code{start > end} (see examples).
#'
#' @param x A numeric vector.
#' @param in_start,in_end The limits of the input range, defaults to
#'   \code{min(x)} and \code{max(x)} with NA removed.
#' @param out_start,out_end The limits of the output range, defaults to 0 and 1.
#'
#' @examples
#' linear_map(1:3)                                # 0, 0.5, 1
#' linear_map(1:3, 0, 10)                         # 0.1, 0.2, 0.3
#' linear_map(1:3, 1, 10)                         # 0, 0.11, 0.22
#' linear_map(1:3, 0, 10, 0, 100)                 # 10, 20, 30
#' linear_map(-1, 0, 1, 20, 30)                   # 10
#'
#' # Ranges may also go from high to low values (inverts the result):
#' linear_map(1:3, out_start = 30, out_end = 10)  # 30, 20, 10)
#' @export
linear_map <- function(x,
                      in_start = min(x, na.rm = TRUE),
                      in_end = max(x, na.rm = TRUE),
                      out_start = 0,
                      out_end = 1) {
    stopifnot(
        in_start != in_end,
        out_start != out_end
    )
    (x - in_start) / (in_end - in_start) * (out_end - out_start) + out_start
}
