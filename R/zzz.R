.onAttach <- function(libname, pkgname) {
    packageStartupMessage(
        "WARNING: Do not use BastiHzR in anything important!\n",
        "This package is a personal playground and things will break, ",
        "therefore nothing should depend on it too heavily."
    )
}
