

# Style guide {.unnumbered}

This "chapter" shows how stylistic formatting outputs, such as headers and text-boxes will appear in each version (html, pdf, and epub) of the textbook.

Currently this style guide is incomplete as a tutorial resource. A future goal is to describe how the source code can be modified to achieve custom styling. The R Markdown for this chapter shows some examples of customized classes created for this textbook, and is available on the [github repo for the textbook](https://github.com/CrumpLab/cognition/blob/main/textbook/Style_guide.Rmd).

The html book uses a slightly modified version of the [bs4_book](https://pkgs.rstudio.com/bookdown/reference/bs4_book.html) template for [bookdown](https://pkgs.rstudio.com/bookdown/index.html). The pdf version involves a slightly modified version of the default latex template. The epub version is unmodified to date. Please refer to [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/) for further instruction on methods for customization.

## Header level 1

Lorem ipsum dolor sit amet, a non, non sollicitudin sed vestibulum. Ridiculus condimentum id consequat mauris et. 

### Header level 2

Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor.

#### Header level 3

Amet laoreet per a velit interdum neque class penatibus. Tortor nullam ultrices, curae sit, in diam feugiat felis faucibus malesuada varius.

> Rhoncus iaculis, in auctor vel sem phasellus. Dictum felis neque porta, curae sed, sed a enim. Donec turpis, curae, sollicitudin montes. Maecenas praesent ipsum eget non, in. 

1. Rhoncus iaculis, in auctor vel sem phasellus.
2. Dictum felis neque porta
3. in auctor vel sem phasellus.

---

::: floatrightbox50

This is a breakout box, compatible with markdown

:::

Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. 

::: floatrightbox25

This is a breakout box, compatable with markdown

:::

Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. 



Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. 

::: {.floatrightbox25 data-latex=""}


<img src="imgs/Francis_Galton.jpg" width="100%" />

:::

Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. Non, condimentum morbi venenatis eget diam lectus dignissim ridiculus ac mi inceptos tempus urna. Vitae rhoncus eleifend parturient tincidunt et ac, fames non dolor, a amet nascetur porttitor. 

## twitter card

The `twitter_cards.html` file controls twitter card behavior for this textbook. That file points to an image in the `imgs/` folder of this repository. The image is "knitted" into this page, which is a hack for getting the image to be included in the `docs/` folder used to serve web content.

<img src="imgs/IOC_twittercard.png" width="100%" />



