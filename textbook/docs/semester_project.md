# Semester 1 project {.unnumbered}

"11/8/2020 | Last Compiled: 2020-12-14"




## Overview

Your semester project assignment is due at the end of the semester and is submitted as a link on Blackboard.

We will discuss this project across the semester. As an overview, you will be demonstrating that you can conduct a reproducible analysis, which is an analysis of data that is independently verifiable. For example, someone else could obtain your data and code and independently reproduce your analysis. 

You will complete three related parts.

1. Reproducible Report: Obtain open-data from an existing psych paper, load the data in R, and attempt to reproduce the statistical analysis that the original authors reported.

2. APA paper: Learn how to use the `papaja` package that allows you to compile .Rmd files to APA style manuscripts in pdf form. Then, write a short APA-style research report that describes your reproducible analysis.

3. Simulation based power analysis: Include a simulation based power analysis at the end of your APA paper.

## Part 1: Reproducible report (10 points)

### Finding a paper with data

Here are a few tips for finding a psych paper with open data. **Most important**, for this assignment you do not need to re-analyze **all of the data** from a particular paper. Many papers have multiple experiments, and multiple analyses, including analyses you may not be familiar with. You can restrict your re-analysis to a portion of the paper. For example, you might only re-analyze the results from one experiment, and perhaps only the results relevant to one of the tests reported for the experiment. **You can limit your re-analyses to tests that have been covered in lecture or lab**. 

1. [https://osf.io](https://osf.io) The open science framework contains many repositories of open data that are part of published papers
2. Some journals, including Psychological Science, put badges on papers with open data. Look for the blue open-data badge. You will usually find the link to the open-data in the paper.
3. [https://crumplab.github.io/statisticsLab/](https://crumplab.github.io/statisticsLab/) This is a lab manual I use for teaching R to undergraduates. Most labs (especially 6 to 11) involve a paper from Psych science with open-data.

### Loading the data into R

The data you find could be in many different formats. It should be possible to load it into R and transform the data into the format/organization that you need to complete the analysis.

### Re-analysis of original data

Focus on a single analysis that was relevant to one of the research questions. For example, if the analysis involved several t-tests:

1. Conduct and report the same t-tests
2. Report a table of means
3. Report a graph of the means


### Write a reproducible report

The concept of a reproducible report is that someone else could exactly reproduce your analysis given your report. It is easy to make reproducible reports using R markdown. If you write your report in an .Rmd file, and that file includes your scripts for loading and analyzing the data, then by sharing your .rmd file, other people can exactly reproduce your report.

Your report should include the following (the points add up to 10 for part 1).

1. A brief description of the research question and experiment (with citation to the paper, and link to find the data) (3 points)

2. The R code chunks necessary to complete the re-analysis (3 points).

3. A write-up of your re-analysis results. (3 points)

4. A brief discussion of whether you were successful or not. (1 point)

## Part 2: APA paper in R markdown (10 points)

### Papaja

In part 2, you will learn how to use the papaja package to create APA style manuscripts using R markdown. We will discuss how to use papaja in class. You will create a new .rmd file using the papaja template, and then transfer your reproducible report into this format. You will write very brief sections for:

1. abstract (50-100 words) (1 point)
2. introduction (1 or two paragraphs) (1 point)
3. methods (1 paragraph)  (1 point)
4. results (Your re-analysis results)  (3 point)
  - must include the R code chunks for the analysis
  - full points only if the reporting of results is also reproducible (not by hand), as in the the example (see below).
5. discussion (very brief, 1 paragraph)  (1 point)
6. references (cite the paper, and anything else you want to cite)  (1 point)
7. A completed .Rmd file and succesfully compiled .pdf using `papaja` (2 points)

Again, the purpose here is not to write a full-length APA paper, but to get some experience with using the papaja package.

## Part 3: Power analysis (8 points)

### Simulation based power analysis

In part 3 you will add a simulation-based power analysis to your APA-style manuscript. Specifically, you should report a graph showing a power-curve for the design. We will discuss how to conduct simulation based power analyses in class.

The following should be included in the general discussion of your APA-paper (from part 2).

1. The R code chunk conducting your power analysis (3 points)
2. A paragraph or two discussing and explaining your power analysis to the reader, as well as reporting the results of the power analysis. (3 points)
3. A graph depicting a power-curve for the design. (2 points)
4. A statement about how the design might be changed to achieve a desired or preferred amount of power. (2 points)


---

## Example of a completed project

To give you a better idea of what I am looking for I completed the project myself. 

And the source code is located in this github repository [https://github.com/CrumpLab/psyc7709Lab/tree/master/semester_project](https://github.com/CrumpLab/psyc7709Lab/tree/master/semester_project).

This repository contains:

1. **Part 1**: An .rmd file that reproduces the analysis from Experiment 3 of Rosenbaum, Mama, Algom (2017)
2. **Part 2**: an APA-style manuscript version of the reproducible report using papaja
3. **Part 3**: a section at the end of the APA-style manuscript that conducts a simulation based power-analysis of the design.

## Semester Project Submission

1. Create a **new** git-enabled R project for your semester project, and upload it to github
2. Work in this folder, and complete Parts 1 to 3. When you are finished you should have at a minimum:
  - a folder for the data that you obtained
  - A compiled .Rmd and html file for part 1
  - A compiled .Rmd and .pdf for part 2 and 3
  - a bib file for your references
3. Submit the link to your github repository to the Blackboard assignment for the semester long project
