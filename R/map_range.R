#' map_range
#'
#' Map a vector from one range to another. Works by first scaling down to [0;1]
#' and then scaling up to the target range.
#'
#' Does not throw an error if \code{out_start > out_end} because this may be desirable
#' in some cases.
#'
#' @param x foo
#' @param in_start bar
#' @param in_end baz
#' @param out_start bla
#' @param out_end blubb
#'
#' @return blargh
#' @export
#'
#' @examples
#' map_range(1:3)                  # 0.0, 0.5, 1.0
#' map_range(1:3, 1, 10)           # 0.00, 0.11, 0.22
#' map_range(1:3, 0, 10)           # 0.1, 0.2, 0.3
#' map_range(1:3, 0, 10, 0, 100)   # 10, 20, 30
#' map_range(1:3, 1, 10, 10, 100)  # 10, 20, 30
#' # target range may be inverted (see Details):
#' map_range(1:3, out_start = 30, out_end = 10)  # 30, 20, 10)
map_range <- function(x,
                      in_start = min(x, na.rm = TRUE),
                      in_end = max(x, na.rm = TRUE),
                      out_start = 0,
                      out_end = 1) {
    stopifnot(
        # Prevent division by 0.
        in_start != in_end,
        out_start != out_end
    )
    (x - in_start) / (in_end - in_start) * (out_end - out_start) + out_start
}
