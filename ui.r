library(shiny) 
shinyUI(pageWithSidebar(
  headerPanel("Predict me an Iris!"), 
  sidebarPanel(
    h3('Input Values'),
    numericInput('slength', 'Sepal Length', 5.8, min = 4.3, max = 7.9, step = .1),
    numericInput('swidth', 'Sepal Width', 3, min = 2, max = 4.4, step = .1),
    numericInput('plength', 'Petal Length', 4, min = 1, max = 6.9, step = .1),
    numericInput('pwidth', 'Petal Width', 2, min = .1, max = 2.5, step = .1)
  ),
  mainPanel(
    h3('Prediction'),
    verbatimTextOutput("prediction")
  ) 
))