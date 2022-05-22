
#' build home page
#'
#' @return home page
#' @export
cognition_home <- function(){
  pkgdown::build_home(override = yaml::read_yaml("_override.yml"))
}

#' build site
#'
#' @return site
#' @export
cognition_site <- function(){
  pkgdown::build_site()
  pkgdown::build_home(override = yaml::read_yaml("_override.yml"))
}




