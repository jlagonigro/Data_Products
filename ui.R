# This shiny app prompts the user to enter the number of random numbers to generate and whether they want to see
# the mean, median or both.  The app then generates the numbers and provides the summary and all numbers to the
# user.

library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Show Mean and Median for a group of numbers"),
        sidebarPanel(
                p('Enter the amount of random numbers you would like generated and this app will generate the numbers, display them, and display the mean and median.'),
                numericInput('num_in', 'Numbers to generate (max=5000):', 0, min=0, max=5000, step=1),
                sliderInput('minMax_in', 'Range', 0, 10000, c(0,500)),
                h4('Compute:'),
                checkboxInput('mean_in', label='Mean'),
                checkboxInput('median_in', label="Median"),
                actionButton("button", "Generate")
        ),
    
    mainPanel(
        htmlOutput('text_out')
    )
))