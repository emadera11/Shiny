library(shiny)

shinyUI(
        fluidPage(
                  titlePanel("Select input ui widget in Shiny"),
                  sidebarLayout(
                                sidebarPanel(
                                             selectInput("state", "Select a State", c("California", "Florida", "Texas", "New York", "Arizona"), selected = "Texas", multiple = TRUE)
                                ),
                                mainPanel(textOutput("state")
                                )
                  )

                  )
)