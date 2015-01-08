library(shiny) 
shinyUI(pageWithSidebar(
  headerPanel("Predict me an Iris!"), 
  sidebarPanel(
    h3('Input Values'),
    numericInput('slength', 'Sepal Length (4.3 to 7.9)', 5.8, min = 4.3, max = 7.9, step = .1),
    numericInput('swidth', 'Sepal Width (2 to 4.4)', 3, min = 2, max = 4.4, step = .1),
    numericInput('plength', 'Petal Length (1 to 6.9)', 4, min = 1, max = 6.9, step = .1),
    numericInput('pwidth', 'Petal Width (.1 to 2.5)', 2, min = .1, max = 2.5, step = .1),
    h2('-----------------------------'),
    h3('Select any values in range above to get a prediction of the kind of iris'),
    h2('-----------------------------'),
    h3('Model is trained using pls classification algorithm')
  ),
  mainPanel(
    h3('Prediction'),
    verbatimTextOutput("prediction")
  ) 
))