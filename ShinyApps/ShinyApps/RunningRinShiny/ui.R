library(shiny)

shinyUI(
        fluidPage(
                  titlePanel("This is my first Shiny APP"),
                  sidebarLayout(
                                sidebarPanel(
                                             sliderInput("slide", "Select a Value from Slider:", min = 0, max = 5, value = 2, step = 0.2)

                                ),
                                mainPanel(
                                          textOutput("out")

                                          )
                                )
                  )

                  )

