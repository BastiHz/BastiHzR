
# Plot the linear regression line only inside the bounds of x.

# FIXME: Merge this with the file lm_segment in the Privatkram repo. see the
#        todo there about necessary changes.
# TODO: Write documentation
# TODO: Write tests. Test cases: positive slope, negative slope, no slope, unordered x.

# lm_line <- function(mod, plot = TRUE, ...) {
#     x <- mod$model$x
#     i <- which(x %in% range(x))
#     x <- x[i]
#     y <- mod$fitted.values[i]
#     if (plot) {
#         lines(x, y, ...)
#     }
#     invisible(list(x = x, y = y))
# }
#
# x <- sample(1:10+0.1)
# y <- rnorm(10) + x
# plot(x, y)
# mod <- lm(y~x)
# #abline(mod)
# lm_line(mod, col = "red", lwd = 2)