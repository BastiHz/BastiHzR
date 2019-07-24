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
