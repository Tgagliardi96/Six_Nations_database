#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(fresh)

round_1 <- read.csv("C:\\Users\\Tommaso\\Desktop\\Six Nations\\2023\\round_1.csv")

# Creating header

header <- dashboardHeader(
  title = div("Rugby Stats", style = "color: black; font-size: 30px; font-weight: bold; font-family: times"),
  disable = FALSE)

# Creating buttons in user interface

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Data", "data", icon = icon("database")),
    menuItem("Player", "player", icon = icon("user")),
    menuItem("Statistics", "stats", icon = icon("chart-line"))
    )
)

# User Interface function. Defined skin along with header, sidebar

  ui <- dashboardPage(
    skin = "black",
    header,
    sidebar,
    dashboardBody())

# Define server logic required to draw a histogram
server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)
