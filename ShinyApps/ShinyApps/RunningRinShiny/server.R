library(shiny)

shinyServer(
            function(input, output) {

                output$out = renderText(paste("You have Selected value of: ", input$slide))
            }
            )