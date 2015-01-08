library(shiny) 
library(caret)
library(pls)
library(datasets)

d <- iris
l <- train(d[,1:4], d$Species, method = "pls")

shinyServer(
  function(input, output) {
    inputs <- reactive({
      dd <- matrix(nrow = 1 , ncol = 4)
      
      dd[1,1] = input$slength
      dd[1,2] = input$swidth
      dd[1,3] = input$plength
      dd[1,4] = input$pwidth
      dd
    })

    predictIt <- function(inputs) predict(l, inputs)
    
    output$prediction <- renderPrint({
      predictIt(inputs())
    })    
  } 
)