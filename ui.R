library(shiny)
library(dplyr)
library(DT)
source("server.R")

ui <- fluidPage(
  column(12, align = "center", titlePanel("STARWARS"), br()),

  sidebarPanel(
    selectizeInput("gender", "Gender", choices = c("All", unique(starwars$gender))),
    selectizeInput("species", "Species", choices = c("All", unique(starwars$species))),
    selectizeInput("skin_color", "Skin Color", choices = c("All", unique(starwars$skin_color))),
    selectizeInput("eye_color", "Eyes Color", choices = c("All", unique(starwars$eye_color)))
  ),
  # Create a new row for the table.
  mainPanel(
    DT::dataTableOutput("table")
  )
)

shinyApp(ui, server, options = list(height = 1080))