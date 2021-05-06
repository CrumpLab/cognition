# Preface {.unnumbered}

Right now it's Dec 4th, 2020; and Anjali Krishnan & I have been co-teaching a stats course for graduate students in our Master's of Experimental Psychology program. The semester is almost over, and next semester we are moving on to stats II. This is the first time we have tried to coordinate efforts at the graduate level, it's been fun.

A few years ago, we put our heads together to create a free undergraduate textbook ([Answering questions with data](https://crumplab.github.io/statistics/)) and [lab manual](https://crumplab.github.io/statisticsLab/), which covered the same exercises across four software environments, R, Excel, SPSS, and Jamovi ([Anjali's verion here](https://anjkrishnan.github.io/StatLab_jamovi)). All of those resources exist on Github repos, and are licensed as CC BY 4.0, so they can all be copied, remixed, and re-used on that license.

Anjali has been teaching our stats sequence at the graduate level for several years, and our program decided to expand the statistics offering to include additional lab hours. So, this year, I'm joining the club and writing lab curriculum for every week of the course. As of now, I decided to gather all of the labs written so far and put them into this "fancy" new `bs4_book()` bookdown format.

Anjali has been using two statistics textbooks for the lecture portion of the course. The first semester mostly follows "Thinking with Data" [@vokeyThinkingData7th2018], and the second semester mostly follows "Experimental Design and Analysis for Psychology" [@abdiExperimentalDesignAnalysis2009]. Coincidentally, I was trained by John Vokey & Scott Allen at the University of Lethbridge (and worked through their textbook as an undergrad), and Anjali was trained by Hérve Abdi at UT Austin. So, it seems we have both academically inherited the impulse to create statistics curriculum.

## For Students

If you are a student in my class and have questions about what's going on in class, then please ask me or email me.

If you are a student interested in using these materials, and you are not in my class, and you don't know where to begin, then I hope this little overview is helpful. I think there are enough breadcrumbs here to work your way through the course material on your own.

I am creating new chapters almost each week during Fall 2020 and Spring 2021. Each chapter is a series of lab exercises corresponding closely to chapters in the textbooks we use for stats I and II [@abdiExperimentalDesignAnalysis2009;@vokeyThinkingData7th2018]. In the labs we use R, RStudio, and Github to complete assignments. See instructions in the next Getting Started section for tips on installing the necessary software. 

Each lab has a similar structure, with a written chapter and corresponding lecture video followed by a generalization assignment. Lab content is split into conceptual sections (reinforcing a statistical concept with R), and practical sections (showing how to do specific tasks and analyses in R). We start off with very basic R coding, and discuss new coding concepts as they are needed. The generalization problems at the end of each lab are designed to be solved with R code, and challenge students to independently apply coding concepts from the lab to solving similar but new assignment problems. At the same time, all of the assigned problems have walkthrough videos showing example solutions in case you get stuck.

If you were to follow all of the materials, you would gain experience using R and Rstudio, as well as writing in the powerful and amazing R Markdown language (e.g., which allowed me to make this web-book), and also become familiar with using Github for sharing research assets like statistical analyses that you produce with R. Also, I hope you would find the materials useful for enriching your understanding of statistics. Best of luck!

## For Instructors

These materials are currently under development, but also released under a CC BY-SA 4.0 license. As a result, these materials will be free to remix and re-use under that license. 

Feel free to fork the repo and use these materials as you see fit. If you would like to contribute to the development of these materials, feel free to submit a pull-request with suggested changes (or leave a comment in github issues).

## CC BY-SA 4.0 license

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

This license means that you are free to:

- Share: copy and redistribute the material in any medium or format
- Adapt: remix, transform, and build upon the material for any purpose, even commercially.

The licensor cannot revoke these freedoms as long as you follow the license terms.

Under the following terms:

- Attribution: You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike: If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
- No additional restrictions: You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

## Copying the textbook

This textbook was written in R-Studio, using R Markdown, and compiled into a web-book format using the bookdown package. In general, I thank the larger R community for all of the amazing tools they made.

All of the source code for compiling the book is available in the GitHub repository for this book:

<https://github.com/CrumpLab/rstatsforpsych>

In principle, anybody could fork or otherwise download this repository. Load the .Rproj file in R-studio compile the entire book. The individual .rmd files for each chapter could be edited for content and style to better suit your needs.

If you want to contribute to this version of the textbook, you could make pull requests on GitHub, or discuss issues and make requests on the issues tab.

Note to self to come back here with a quick video rundown of this process.

## Citation

Note, the date reflects the latest compilation of this book. The DOI was minted on 12/10/2020.

Crump, M. J. C. (2021, May 06). Reproducible statistics for psychologists with R: Lab Tutorials. https://doi.org/10.17605/OSF.IO/KBHGA


