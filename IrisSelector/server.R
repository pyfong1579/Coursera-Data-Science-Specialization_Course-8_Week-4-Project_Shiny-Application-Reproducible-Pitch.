library(shiny)
library(DT) # A Wrapper of the JavaScript Library 'DataTables'

function(input, output) {
    # Filter data based on selections
    output$table <- renderDataTable(datatable({
        data <-iris
        data <- data[,c(5,3,4,1,2)]
        if (input$species != "All") {
            data <- data[data$Species == input$species,]
        }
        data
    }))
}