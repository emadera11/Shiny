library(shiny)
library(ggplot2)

colnames(iris)

shinyServer(
            function(input, output) {
                output$myhis = renderPlot({
                                          colm = as.numeric(input$var)
                                          hist(iris[, colm],
                                               breaks = seq(0, max(iris[, colm]),
                                               l = input$bins + 1), col = input$color,
                                               main = "Histogram of Iris Dataset",
                                               xlab = names(iris[colm]))

                    
            })

                output$box = renderPlot({
                    colm = as.numeric(input$var)
                    ggplot(iris, aes(as.factor(iris$Species), iris[,colm], fill = Species)) +
                        geom_boxplot() +
                        scale_y_continuous(expand = c(0,0))+
                        xlab("Species") +
                        theme_bw()
                })

                output$data = renderTable({
                    col = as.numeric(input$var)
                    iris[c(col,5)]
                })

                output$str = renderPrint({
                    str(iris)
                })

                output$sum = renderPrint({
                    summary(iris)


                })
}
          )