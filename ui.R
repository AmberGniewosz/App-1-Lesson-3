library(shiny)

shinyUI(fluidPage(
  titlePanel("censusVis"),
  
  p("Create demographic maps with information from the 2010 US Census."),
  
fluidRow(

  column(3,
         selectInput("This is the race", label = h5("Choose a variable to display"), 
                     choices = list("Percent White" = 1, "Percent Black" = 2,
                                    "Percent Hispanic" = 3), selected = 1))),
hr(),
fluidRow(column(3, verbatimTextOutput("value"))),

  fluidRow( 
  column(3, 
         sliderInput("Range of interest", label = h5("Range of interest"),
                     min = 0, max = 100, value = 50)))
         
         
         
  ))