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
  # Step 3
  mainPanel(
    # Display the data table output of the dataframe in the server
  )
)

shinyApp(ui, server, options = list(height = 1080))