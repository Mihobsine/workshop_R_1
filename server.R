server <- function(input, output) {
  # Step 3
  # Find the function that return the dataframe.
  # Get the starwars dataframe without useless columns.
  # Put the dataframe in the function.
  data <- select(starwars, -c("films", "vehicles", "starships"))

  output$dataframe <- renderDataTable(
    {
    if (input$gender != "All") {
      data <- filter(data, gender == input$gender)
    }

    if (input$species != "All") {
      data <- filter(data, species == input$species)
    }

    if (input$skin_color != "All") {
      data <- filter(data, skin_color == input$skin_color)
    }

    if (input$eye_color != "All") {
      data <- filter(data, eye_color == input$eye_color)
    }

    data
  }
  )
  # Step 4
  # Check the inputs to filter your dataframe
  # )
}
