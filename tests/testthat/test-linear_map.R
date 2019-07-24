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


context("linear_map")

test_that("linear_map output is correct", {
    foo <- 1:3
    expect_equal(linear_map(foo), c(0.0, 0.5, 1.0))
    expect_equal(linear_map(foo, 1, 10), c(0, 1/9, 2/9))
    expect_equal(linear_map(foo, 0, 10), c(0.1, 0.2, 0.3))
    expect_equal(linear_map(foo, 0, 10, 0, 100), c(10, 20, 30))
    expect_equal(linear_map(foo, 1, 10, 10, 100), c(10, 20, 30))
    expect_equal(linear_map(seq(0, 360, 90), out_end = 2 * pi),
                 seq(0, 2 * pi, pi / 2))
    expect_equal(linear_map(-1, 0, 1, 20, 30), 10)
    expect_equal(linear_map(c(1, NA, 3)), c(0, NA, 1))
    expect_equal(linear_map(1:3, out_start = 30, out_end = 10), c(30, 20, 10))
})

test_that("linear_map throws expected errors", {
    expect_error(linear_map(3))
    expect_error(linear_map(1:3, 1, 1))
    expect_error(linear_map(1:3, out_start = 1, out_end = 1))
})
