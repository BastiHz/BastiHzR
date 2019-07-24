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


context("%!in%")

test_that("%!in% works as expected", {
    foo <- c(1, 2)
    bar <- c(1, 3, 4, 5)
    result <- foo %!in% bar
    expect_equal(result, c(FALSE, TRUE))
    expect_equal(!result, foo %in% bar)
})
