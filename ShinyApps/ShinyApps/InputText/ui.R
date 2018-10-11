library(shiny)

shinyUI(
        fluidPage(
                  titlePanel(title = "Creation of Text Widget input"),
                  sidebarLayout(
                                sidebarPanel(("Enter teh Personal Information:"),
                                             textInput("name", "Enter Your Name:", " "),
                                             textInput("age", "Enter Your Age:", " ")),
                                mainPanel(("Personal Information:"),
                                textOutput("myname"),
                                textOutput("myage"))
                                )
                  )

        )