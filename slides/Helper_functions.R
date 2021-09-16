items <- c("The intelligence test race",
           "Binet-Simon Test",
           "Mental testing and Eugenics",
           "Critical responses")

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

create_roadmaps(items=items, use_item_title=TRUE)
