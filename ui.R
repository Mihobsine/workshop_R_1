library(shiny)
library(dplyr)
library(DT)
source("server.R")

ui <- fluidPage(
  column(12, align = "center", titlePanel("STARWARS"), br()),
  # Step 4
  # Put the select inputs in the sidebarPanel
  # sidebarPanel(
  
  # ),
  sidebarPanel(
    fluidRow(column(12, selectizeInput("gender", "Gender:", c("All", unique(starwars$gender))))),
    fluidRow(column(12, selectizeInput("species", "Species:", c("All", unique(starwars$species))))),
    fluidRow(column(12, selectizeInput("skin_color", "Skin Color:", c("All", unique(starwars$skin_color))))),
    fluidRow(column(12, selectizeInput("eye_color", "Eye Color:", c("All", unique(starwars$eye_color)))))
  ),
  # Step 3
  mainPanel(
    # Display the data table output of the dataframe in the server
    DT::dataTableOutput("dataframe")
  )
)

shinyApp(ui, server, options = list(height = 1080))
