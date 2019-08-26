context("round")


test_that("round_to_next_multiple", {
    expect_equal(round_to_next_multiple(120, 50), 100)
    expect_equal(round_to_next_multiple(17, 5), 15)
    expect_equal(round_to_next_multiple(-3.1, 2), -4)
})


test_that("floor_to_next_multiple", {
    expect_equal(floor_to_next_multiple(195, 100), 100)
    expect_equal(floor_to_next_multiple(17, 5), 15)
    expect_equal(floor_to_next_multiple(-3.1, 2), -4)
})

test_that("ceiling_to_next_multiple", {
    expect_equal(ceiling_to_next_multiple(120, 50), 150)
    expect_equal(ceiling_to_next_multiple(10.3, 2), 12)
    expect_equal(ceiling_to_next_multiple(-3.1, 2), -2)
})
