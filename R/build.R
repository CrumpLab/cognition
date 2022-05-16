cognition_home <- function(){
  pkgdown::build_home(override = yaml::read_yaml("_override.yml"))
}

cognition_site <- function(){
  pkgdown::build_site()
  pkgdown::build_home(override = yaml::read_yaml("_override.yml"))
}




