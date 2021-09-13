items <- c("Eugenics Overview",
           "Galton's Eugenics",
           "The Eugenics movement",
           "Influences on society",
           "Psychology and Eugenics")

title <- "Roadmap"

create_roadmaps <- function(items, title="Roadmap", use_item_title=FALSE){
  for(j in 1:length(items)){
    if(use_item_title==FALSE) cat("## ", title)
    if(use_item_title) cat("## ", items[j])
    cat("\n")
    cat("\n")
    for(i in 1:length(items)){
      if(i!=j) cat("### ",i,". ",items[i]," {.greyout}", sep = "")
      if(i==j) cat("### ",i,". ",items[i]," {.bolder}", sep = "")
      cat("\n")
    }
    cat("\n")
  }
}

create_roadmaps(items=items)
