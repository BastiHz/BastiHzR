test_that("%!in% works as expected", {
    foo <- c(1, 2)
    bar <- c(1, 3, 4, 5)
    result <- foo %!in% bar
    expect_equal(result, c(FALSE, TRUE))
    expect_equal(!result, foo %in% bar)
})
