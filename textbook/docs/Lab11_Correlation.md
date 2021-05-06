

# Correlation

"10/8/2020 | Last Compiled: 2020-12-14"

## Reading

@vokeyThinkingData7th2018, Chapter 7; @abdiExperimentalDesignAnalysis2009, Chapter 2;  @crumpAnsweringQuestionsData2018, [Chapter 3](https://crumplab.github.io/statistics/Correlation.html)

## Overview

This lab contains a practical section and two concept sections on correlations in R.

 - Practical I: How to compute correlations in R using `cor()` and `cor.test()`
 - Concepts I: the behavior of measures of covariance
 - Concepts II: statistical inference for correlation using permutation tests

## Historical Background

Sir Francis Galton is often credited with inventing measures of correlation [@galtonKinshipCorrelation1890;@galtonCorelationsTheirMeasurement1889], which developed out of his interests in eugenics and quantifying heritability of traits from parents to offspring [@galtonHereditaryTalentCharacter1865;@galtonHereditaryGenius1869]. Galton's protege, Karl Pearson, is credited with popularizing and formalizing measures of correlation; for example, the correlation coefficient, $r$, is often referred to as Pearson's $r$ (AKA Pearson's correlation coefficient, and Pearson's product-moment correlation coefficient). Pearson published his work in a brief note to the Royal Society [@pearsonNotesRegressionInheritance1895]. Despite the recognition that Galton and Pearson receive, it seems that August Bravais had described correlation coefficients before both of them [@bravaisAnalyseMathematiqueProbabilites1844]. Pearson recounts the history of his development of the correlation coefficient, and discusses how he missed Bravais' work [@pearsonNOTESHISTORYCORRELATION1920]. More recently, Stigler discussed some of the history about Galton's account of his development of the correlation coefficient [@stiglerFrancisGaltonAccount1989]. *note: these papers are included in the class zotero group*.

Finally, @leerodgersThirteenWaysLook1988 have a fantastic article on thirteen ways of conceptualizing the correlation coefficient. They also begin the article with a brief discussion of the history of the development of ideas around correlation.

## Additional Reading

For additional reading and introductory background to the concept of correlation, see this chapter on correlation from *Answering questions with data:* <https://crumplab.github.io/statistics/Correlation.html>


```r
knitr::include_graphics("imgs/corNormFourNs-1.gif")
```

<img src="imgs/corNormFourNs-1.gif" width="100%" />

The animated gif above shows examples of observing random correlations by chance alone. See the above link for example R code to generate gifs like this one.

## Practical I: cor() and cor.test()

### cor()

Base R comes with the `cor()` function for computing Pearson's correlation coefficients. 


```r
?cor
```

The `cor()` function can take vectors for x and y variables as inputs and return a correlation.


```r
A <- c(1,2,3,4,5,6,7,8,9,10) 
B <- c(1,3,2,4,3,5,4,5,6,7)

plot(A,B)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-4-1.png" width="100%" />

```r
cor(A,B)  
#> [1] 0.9246348
```

The x or y inputs can also be matrices. In this case, the correlation between each column of A and the vector in B is computed


```r
A <- matrix(rnorm(100,0,1),ncol=10,nrow=10) 
B <- c(1,3,2,4,3,5,4,5,6,7)
cor(A,B)
#>               [,1]
#>  [1,]  0.003608347
#>  [2,] -0.078283572
#>  [3,] -0.388866519
#>  [4,]  0.572010311
#>  [5,] -0.306468442
#>  [6,]  0.491808612
#>  [7,] -0.236608937
#>  [8,]  0.224104176
#>  [9,]  0.415322381
#> [10,] -0.347772269
```
If both x and y are matrices, then the correlation between each column of X and Y are computed.


```r
A <- matrix(rnorm(25,0,1),ncol=5,nrow=5) 
B <- matrix(rnorm(25,0,1),ncol=5,nrow=5) 
cor(A,B)
#>            [,1]        [,2]        [,3]       [,4]       [,5]
#> [1,]  0.9274565  0.53291336  0.63002119 -0.5879674 -0.7128238
#> [2,] -0.1839302 -0.43329264 -0.30701022  0.3671484  0.5783932
#> [3,]  0.4741766 -0.03726613 -0.02985365 -0.2856831 -0.2155076
#> [4,] -0.6559865 -0.16264847 -0.10544917  0.2496656  0.3408820
#> [5,]  0.4630268  0.75290824  0.68851761 -0.1870484 -0.5952092
```
### cor and n-1

It's worth noting that `cor()` divides by n-1, so it is a function for computing the correlation coefficient for a sample.


```r
A <- c(1,2,3,4,5)
B <- c(5,2,3,1,4)
cor(A,B)
#> [1] -0.3

# long-form using z-score method

A_z <- (A-mean(A))/sd(A)
B_z <- (B-mean(B))/sd(B)
sum(A_z * B_z) / 4 # n-1, 5-1 = 4
#> [1] -0.3
```

### Additional `cor()` functionality

A review of the help file for `cor()` shows that it has a number of other uses. For example, the default method is to compute a Pearson correlation coefficient, but the same function could also be used to compute a kendall or spearman's coefficient (not yet discussed in class). 

Another more advanced feature is handling of missing values. For example, below the variable B contains an `NA`, or a missing value in the fifth position. By default, `cor()` will return NA in this situation.


```r
A <- c(1,2,3,4,5)
B <- c(5,2,3,1,NA)
cor(A,B)
#> [1] NA
```

However, the `use=` option can be set to handle missing data in different ways. For example, the `complete.obs` option removes the fifth pair altogether, and compues the correlation on the remaining pairs that have complete cases.


```r
cor(A,B,use="complete.obs")
#> [1] -0.8315218
```

### cor.test()

The `cor()` function only returns correlation coefficients, however the `cor.test()` function can be used to return both an $r$ value, as well as a $p$-value.


```r
?cor.test
```

From the help file for `cor.test()`, "If method is "pearson", the test statistic is based on Pearson's product moment correlation coefficient cor(x, y) and follows a t distribution with length(x)-2 degrees of freedom if the samples follow independent normal distributions. If there are at least 4 complete pairs of observation, an asymptotic confidence interval is given based on Fisher's Z transform."


```r
A <- c(1,2,3,4,5)
B <- c(5,2,3,1,4)
cor.test(A,B)
#> 
#> 	Pearson's product-moment correlation
#> 
#> data:  A and B
#> t = -0.5447, df = 3, p-value = 0.6238
#> alternative hypothesis: true correlation is not equal to 0
#> 95 percent confidence interval:
#>  -0.9348345  0.7918544
#> sample estimates:
#>  cor 
#> -0.3
```
`cor.test()` also return a list object that can be saved and accessed at a later point.


```r
A <- c(1,2,3,4,5)
B <- c(5,2,3,1,4)
results <- cor.test(A,B)

results$statistic
#>          t 
#> -0.5447048
results$parameter
#> df 
#>  3
results$p.value
#> [1] 0.6238377
results$estimate
#>  cor 
#> -0.3
```

## Conceptual I: The simple cross product as a measure of correlation

### Correlation basics

A correlation coefficient is a convenient measure of association between two variables. One convenient aspect is that the resulting value is limited to the range of -1 to 1, which can aid in interpreting the value. +1 means perfect positive correlation, 0 means no correlation, and -1 means perfect negative correlation.

In this section we use R to look at the basic math behind the correlation coefficient, as a way to focus on the more general concept. 

For example, the general concept of positive correlation is that a pair of measures tends go up and down together. When a value of X is small, a paired value on Y is usually small. When a value of X is large, a paired value on Y is usually large. In other words, the variation in X matches well with the variation in Y;or,  X and Y *co-vary* together in the same way.

A perfect positive example of this is:


```r
X <- 1:10
Y <- 1:10

plot(X,Y)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-13-1.png" width="100%" />

```r
cor(X,Y)
#> [1] 1
```
A negative correlation is when a pair of measures tends go in opposite directions from each other. When a value of X is small, a paired value on Y is usually large. When a value of X is large, a paired value on Y is usually small. Here, X and Y again co-vary, except in opposite ways. A perfect negative example of this is:


```r
X <- 1:10
Y <- 10:1

plot(X,Y)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-14-1.png" width="100%" />

```r
cor(X,Y)
#> [1] -1
```

The idea of zero correlation is that there isn't an association between the paired values. If a value of X goes up or down, the paired value on Y does whatever it wants.

Everytime this code chunk runs, we randomly shuffle Y, and the resulting correlation should on average be 0 (but not everytime due to chance).


```r
X <- 1:10
Y <- sample(10:1)

plot(X,Y)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-15-1.png" width="100%" />

```r
cor(X,Y)
#> [1] 0.1151515
```

### Crossproducts and correlation

Pearson's $r$ is also sometimes called a product moment correlation coefficient. This refers to the idea that $r$ is a sum of cross products that are standardized.

In this section we look at the more basic cross-product operation. For example, a cross product involves multiplying the values in two variables X and Y together.


```r
X <- 1:10
Y <- 1:10

X*Y
#>  [1]   1   4   9  16  25  36  49  64  81 100
```

The sum of cross products involves adding up all of the values:


```r
sum(X*Y)
#> [1] 385
```

The sum of crossproducts is also a measure of correlation or association between variables X and Y. However, the range of values it can take depend on the values in X and Y (they are not standardized).

Consider these questions, and assume that X contains the values from 1 to 10, and so does Y.

1. What is the largest value that the sum of crossproducts between X and Y can take?


```r
X <- 1:10
Y <- 1:10
sum(X*Y)
#> [1] 385
```

Notice in this arrangement, the smallest value of X and Y (1) are paired together, the next largest value (2) are paired, and so on up until 10. This pairing creates the largest sum of crossproducts. It is also represents a perfect positive correlation.

2. What is the smallest value that the sum of crossproducts between X and Y can take?


```r
X <- 1:10
Y <- 10:1
sum(X*Y)
#> [1] 220
```

When the numbers are arranged to produce a perfect negative correlation, the sum of the cross products is at it's minimum possible value.

3. If X contains only the number from 1 to 10 in any order, and Y does too, what kinds of sums of cross-products can occur?


```r
sum(sample(1:10)*sample(1:10))
#> [1] 327
```


```r
sim_sums <- replicate(1000,sum(sample(1:10)*sample(1:10)))
hist(sim_sums)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-21-1.png" width="100%" />

```r
min(sim_sums)
#> [1] 229
max(sim_sums)
#> [1] 380
```

## Conceptual II: Statistical inference for correlation

We will look at the concept of a null-distribution for correlation co-efficients in two different ways, first by randomly samply values from normal distributions, and second by a permutation test.

### "Random" correlations

It is totally possible to apply the Pearson's $r$ formula to two variables that are conceptually 100% uncorrelated and independent from each other, and still find "correlations", or largish values of $r$.

For example, if we randomly sample 10 values from a normal distribution into X, and another 10 values from a normal distribution in Y, then we expect on average there should be 0 correlation between X and Y. After all, we selected our values completely at random.


```r
X <- rnorm(10,0,1)
Y <- rnorm(10,0,1)
cor(X,Y)
#> [1] 0.3314112
```

What happens if we do the above 10 times?


```r
replicate(10,cor(rnorm(10,0,1),rnorm(10,0,1)))
#>  [1] -0.72904120  0.10020194  0.03293618  0.56556534 -0.56853952  0.14498714
#>  [7]  0.31301378 -0.22757317 -0.31687271 -0.21953919
```

How about 1000 times?


```r
rand_1000 <- replicate(1000,cor(rnorm(10,0,1),rnorm(10,0,1)))
hist(rand_1000)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-24-1.png" width="100%" />

```r
mean(rand_1000)
#> [1] 0.003693625
max(rand_1000)
#> [1] 0.8023694
min(rand_1000)
#> [1] -0.8333578
```

In some sense the above simulation creates a null-distribution of sorts, that is the sampling distribution of $r$ values that could be expected when the number of paired scores is 10, and both are drawn randomly and independently from unit normal distributions. It's clear in this case that by chance alone it is possible to get a wide range of correlation coefficients.

### Sample-size matters

Briefly, the kinds of correlations that can be produced by chance are limited by sample-size. For example, consider what happens to the range of simulated $r$ values when the number of paired scores is increased from 10 to 100.


```r
rand_1000 <- replicate(1000,cor(rnorm(100,0,1),rnorm(100,0,1)))
hist(rand_1000)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-25-1.png" width="100%" />

```r
mean(rand_1000)
#> [1] 0.001979886
max(rand_1000)
#> [1] 0.3201781
min(rand_1000)
#> [1] -0.3079627
```

### Permutation test 

In class we discussed some sample data suggesting that the length of a word is negatively correlated with the number of meanings of a word. Example data showing a negative correlation is shown below (taken from the R workbook from the Abdi textbook).


```r
library(ggplot2)
library(ggrepel)
Words  = c('bag','buckle','on','insane','by','monastery',
'relief','slope','scoundrel','loss','holiday','pretentious',
'solid','time','gut','tarantula','generality','arise','blot','infectious')
Length=c(3,6,2,6,2,9,6,5,9,4,7,11,5,4,3,9,10,5,4,10)
Meanings=c(8,4,10,1,11,1,4,3,1,6,2,1,9,3,4,1,3,3,3,2)

all <- data.frame(Words,Length,Meanings)
knitr::kable(all)
```



|Words       | Length| Meanings|
|:-----------|------:|--------:|
|bag         |      3|        8|
|buckle      |      6|        4|
|on          |      2|       10|
|insane      |      6|        1|
|by          |      2|       11|
|monastery   |      9|        1|
|relief      |      6|        4|
|slope       |      5|        3|
|scoundrel   |      9|        1|
|loss        |      4|        6|
|holiday     |      7|        2|
|pretentious |     11|        1|
|solid       |      5|        9|
|time        |      4|        3|
|gut         |      3|        4|
|tarantula   |      9|        1|
|generality  |     10|        3|
|arise       |      5|        3|
|blot        |      4|        3|
|infectious  |     10|        2|

```r

ggplot(all,aes(x=Length,y=Meanings))+
  geom_point()+
  geom_text_repel(aes(label=Words))
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-26-1.png" width="100%" />


According to the `cor.test()` function, the correlation in the sample data is unlikely to have been produced by chance alone.


```r
cor.test(Length,Meanings)
#> 
#> 	Pearson's product-moment correlation
#> 
#> data:  Length and Meanings
#> t = -4.5644, df = 18, p-value = 0.0002403
#> alternative hypothesis: true correlation is not equal to 0
#> 95 percent confidence interval:
#>  -0.8873588 -0.4289759
#> sample estimates:
#>        cor 
#> -0.7324543
```

Instead of using the `cor.test()` function, we can use the concept of a permutation test to construct our own null distribution. The basic idea is to imagine that the values in the `Length` and `Meanings` variables could be randomly repaired, and then a new correlation coefficient measured. If we did this procedure several thousand times we would create a null distribution representing the kinds of $r$ values that could have been obtained by chance. 

```r
cor(sample(Length),sample(Meanings))
#> [1] 0.05954913
```


```r
sim_rs <- replicate(1000,cor(sample(Length),sample(Meanings)))
hist(sim_rs)
```

<img src="Lab11_Correlation_files/figure-html/unnamed-chunk-29-1.png" width="100%" />

```r

length(sim_rs[sim_rs <= cor(Length,Meanings)])/1000
#> [1] 0
```

## Lab 11 Generalization Assignment

### Instructions

In general, labs will present a discussion of problems and issues with example code like above, and then students will be tasked with completing generalization assignments, showing that they can work with the concepts and tools independently. 

Your assignment instructions are the following:

1. Work inside the R project "StatsLab1" you have been using
2. Create a new R Markdown document called "Lab11.Rmd"
3. Use Lab11.Rmd to show your work attempting to solve the following generalization problems. Commit your work regularly so that it appears on your Github repository.
4. **For each problem, make a note about how much of the problem you believe you can solve independently without help**. For example, if you needed to watch the help video and are unable to solve the problem on your own without copying the answers, then your note would be 0. If you are confident you can complete the problem from scratch completely on your own, your note would be 100. It is OK to have all 0s or 100s anything in between. 
5. Submit your github repository link for Lab 11 on blackboard.

### Problems


```r
X <- c(1,4,3,2,5,4,3,6,7,8)
Y <- c(1,3,6,7,8,2,8,7,6,9)
```

1. An X and Y variable contain the above numbers.

   A. Compute Pearson's $r$ and report the associated p-value using the `cor.test()` function. (2 points)

   B. Use a permutation test to create a null-distribution, and report the p-value for getting the observed correlation or larger using your simulated null-distribution. (2 points)

2. Using the variables X and Y above, and assuming that the values could be re-ordered in any way, report the following:

   A. the smallest possible sum of cross-products (1 point)

   B. the largest possible sum of cross-products (1 point)

