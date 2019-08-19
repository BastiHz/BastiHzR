.onAttach <- function(libname, pkgname) {
    packageStartupMessage(
        "WARNING: Unstable package. Don't use it in important work."
    )
}
