library(shiny)

shinyUI(
        fluidPage(
                  titlePanel(title = h4("Demonstration on how to plot and render plot in Shiny", align="center")),
                  sidebarLayout(
                                sidebarPanel(
                                             selectInput("var", "1. Select the variable for the IRIS dataset: ", choices = c("Sepal.Lenght" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4)),
                                             br(),
                                             sliderInput("bins", "Select number of Bins: ", min = 5, max = 25, value = 15),
                                             br(),
                                             radioButtons("color", "3. Select a color: ", choices = c("green", "red", "blue"), selected = "blue")
                                                         )
                                ,
                                mainPanel(
                                          tabsetPanel(
                                          type = "tab",
                                          tabPanel("Summary", verbatimTextOutput("sum")),
                                          tabPanel("Structure", verbatimTextOutput("str")),
                                          tabPanel("Data", tableOutput("data")),
                                          tabPanel("Plot", plotOutput("myhis"),
                                                           br(),
                                                           plotOutput("box"))
                                          )
                                            
                                        
                                          
                                          )
                                )
                  )

       )