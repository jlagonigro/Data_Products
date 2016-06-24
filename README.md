---
title: "Shiny App for Creating Random Numbers"
author: "John Lagonigro"
date: "June 24, 2016"
output: html_document
---

## Shiny App for Creating Random Numbers

This README provides supporting documentation for the Shiny App.

###Requirements of Project
1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the provided text box
4. Share your server.R and ui.R code on github

The application must include the following:
1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.
6. The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.

###The Shiny App
The Shiny App allows the user to specify how many random numbers should be generated and the minimum and maximum for the numbers as well as whether they would like to see the Mean, the Median, or both.

Once entered, and the "Generate" button is clicked, the app outputs the mean and median (if selected) as well as all the numbers generated with the random number generator.

The app contains the standard ui.r and server.r files that can be downloaded and run locally in R or RStudio, or run from the Shiny server.
```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
