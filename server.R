server <- function(input, output) {
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- starwars %>% select(-c(films, starships, vehicles))
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
  }))
  
}