context("log_ticks")

test_that("log_ticks output is correct", {
    x <- 10^seq(1, 2, length.out = 100)
    x2 <- log10(x)
    expect_equal(log_ticks(x),
                 list(major = c(10, 100), minor = seq(20, 90, 10)))
    expect_equal(log_ticks(x2, log = TRUE),
                 list(major = c(10, 100), minor = seq(20, 90, 10)))
})

test_that("log_ticks handles bad input", {
    x <- 10^seq(1, 2, length.out = 100)
    x[2] <- NA
    ticks <- log_ticks(x)
    expect_equal(ticks, list(major = c(10, 100), minor = seq(20, 90, 10)))
})
