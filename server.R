library(shiny)

compile_output <- function(n, n_min, n_max, n_mean, n_median) {
        output <- ""
        # generate randoms and show mean, median, and all numbers
        nums <- runif(n, n_min, n_max)
        if (n_mean == TRUE) {
               output <- paste("Mean: ", mean(nums), "<br/>")
        }
        if (n_median == TRUE) {
                output <- paste(output,"Median: ", median(nums), "<br/>")
        }
        output <- HTML(paste(output, "<br/>All Random Numbers Generated:<br/>",toString(nums)))
        return(output)
}


shinyServer(
        function(input, output) {
                randoms <- reactive ({
                        if(input$button == 0) {
                                return()
                        }
                        isolate({
                                compile_output(input$num_in, input$minMax_in[1], input$minMax_in[2], input$mean_in, input$median_in)
                        })
                })
                output$text_out <- renderUI({randoms()})
        }
)