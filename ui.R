library(shiny)

shinyUI(fluidPage(
    titlePanel("Plotting Sampled Signals"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("SliderF",
                        "Pick The frequency of the signal",
                        0,100,
                        value = 50),
            sliderInput("SliderSF",
                        "Pick The sampling Frequency",
                        100,400, 
                        value = 100),
        ),
        mainPanel(
            plotOutput("plot1")
        )
    )
))