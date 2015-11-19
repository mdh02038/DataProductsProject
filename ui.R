library(shiny)

shinyUI(fluidPage(
    includeCSS("styles.css"),
    # Application title
    headerPanel("Orienteering Step Calculator"),
    sidebarPanel(
        
        h4('Reference Pace'),
        numericInput(
            'basisScale','Map scale 1:------', 10000, min = 1000,max = 25000,step = 1000
        ),
        numericInput(
            'walkingSteps','Walking Steps per 1/4"', 82, min = 1,max = 10000000,step = 1
        ),       
        numericInput(
            'runningSteps','Running Steps per 1/4', 52, min = 1,max = 10000000,step = 1
        ),
        h4('Desire Map Scale'),
        numericInput(
            'newScale','Map scale 1:------', 5000, min = 1000,max = 25000,step = 1000
        ),
        submitButton('Submit')
        
        
    ),
    
    mainPanel(
     
        div( class="results",
             p('Convert number of steps per 1/4 inch from one map scale to another.\
               Enter your reference pace information in the right hand panel along \
               with the desire map scale. Press submit. Translated pace information \
               will be updated in the left hand panel'),
             h3('Translated Pace'),
             h4('Scale: 1:-------'),
             verbatimTextOutput("newScale"),
             h4('Walking Steps per 1/4"'),
             verbatimTextOutput("resultWalkingSteps"),
             h4('Running Steps per 1/4"'),
             verbatimTextOutput("resultRunningSteps")
        )
    )
    
))