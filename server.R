CalculateSteps <- function(basisScale,newScale,steps) steps * (newScale/basisScale)

shinyServer(
    function(input, output) {
        output$newScale <- renderText({input$newScale}[1])
        
        output$resultWalkingSteps <- renderText({CalculateSteps(input$basisScale,input$newScale,input$walkingSteps)[1]})
        output$resultRunningSteps <- renderText({CalculateSteps(input$basisScale,input$newScale,input$runningSteps)[1]})
        }
)