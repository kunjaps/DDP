library(shiny)

# we shall create a function that takes in a frequency and the sampling
# frequency. 

shinyServer(function(input, output){
    output$plot1 <- renderPlot({
        set.seed(2020-10-04)
        number_of_points <- 100
        
        signal_frequency <- input$SliderF
        sampling_frequency <- input$SliderSF
        
        t <- 1:number_of_points
        y <- sin((signal_frequency/sampling_frequency)*t)
         
        plot(t, y,
             type = "l",
             xlab = "Time",
             ylab = "Amplitude"
             )
    })
})