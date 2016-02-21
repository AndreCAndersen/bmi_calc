library(shiny)

# Define UI for application that draws BMI on a plot of kg and cm
shinyUI(fluidPage(
  
  # Application title
  titlePanel("BMI Calculator"),
  
  # Sidebars with mass and 
  sidebarLayout(
    sidebarPanel(
      "This is a BMI calculator. It takes mass in kilograms and hight in centimeters as input. Your BMI should be between 18.5 and 25. Use the sliders below and see how changes in kg and cm affects BMI. Read more about it ",
      a(href="https://en.wikipedia.org/wiki/Body_mass_index", "here"),"on wikipedia.",
      sliderInput("cm",
                  "Hight in centimeters:",
                  min = 100,
                  max = 260,
                  value = 180
      ),
      sliderInput("kg",
                  "Mass in kilograms:",
                  min = 40,
                  max = 160,
                  value = 80
      )
    ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("bmiPlot")
    )
  )
))