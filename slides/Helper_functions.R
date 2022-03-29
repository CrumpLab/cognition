items <- c("What is this course about?",
           "Course Resources",
           "Syllabus and Logistics",
           "Questions")

title <- "Roadmap"

create_roadmaps <- function(items, title="Roadmap", use_item_title=FALSE){
  for(j in 1:length(items)){
    if(use_item_title==FALSE) cat("## ", items[j])
    if(use_item_title) cat("# ", title )
    cat("\n")
    cat("\n")
    for(i in 1:length(items)){
      if(i!=j) cat("::: {.grey_box} \n",i," ",items[i],"\n",":::", sep = "")
      if(i==j) cat("::: {.pop_box_2} \n",i," ",items[i],"\n",":::", sep = "")
      cat("\n")
    }
    cat("\n")
  }
}

create_roadmaps(items=items, use_item_title=TRUE)
