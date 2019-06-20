context("map_range")

test_that("map_range output is correct", {
    foo <- 1:3
    expect_equal(map_range(foo), c(0.0, 0.5, 1.0))
    expect_equal(map_range(foo, 1, 10), c(0, 1/9, 2/9))
    expect_equal(map_range(foo, 0, 10), c(0.1, 0.2, 0.3))
    expect_equal(map_range(foo, 0, 10, 0, 100), c(10, 20, 30))
    expect_equal(map_range(foo, 1, 10, 10, 100), c(10, 20, 30))
    expect_equal(map_range(c(1, NA, 3)), c(0, NA, 1))
    expect_equal(map_range(1:3, out_start = 30, out_end = 10), c(30, 20, 10))
})

test_that("map_range throws expected errors", {
    expect_error(map_range(3))
    expect_error(map_range(1:3, 1, 1))
    expect_error(map_range(1:3, out_start = 1, out_end = 1))
})
