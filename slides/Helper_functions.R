items <- c("Attentional Concepts",
           "Stroop Effect",
           "Class Experiment")

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

##

reveal_to_pdf <- function(path_to_slides, output_file = "FALSE"){
  if (output_file == FALSE){
    split_input <- unlist(strsplit(path_to_slides,"/"))
    input_name <- split_input[length(split_input)]
    input_name <- unlist(strsplit(input_name,"\\."))[1]
    output_file <- paste(c(split_input[-length(split_input)],
                            paste0(input_name,".pdf")),collapse="/")
  }
  run_decktape <- paste("decktape -p 0 -s 1840x1400 --chrome-path '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'",path_to_slides, output_file)
  system(run_decktape)
}

reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L0_Getting_started/L0_Getting_Started.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L1_Instances/L1_Instances.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L2_QALMRI/L2_QALMRI.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L3_Imagery/L3_Imagery.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L4_Eugenics/L4_Eugenics.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L5_IQ/L5_IQ.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L6_Associations/L6_Associations.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L8_Behaviorism/L8_Behaviorism.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L9_Information/L9_Information.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L10_Memory_1/L10_Memory_1.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L11_Memory_2/L11_Memory_2.html"))
reveal_to_pdf(path_to_slides = paste0(getwd(),"/","L12_Implicit/L12_Implicit.html"))


