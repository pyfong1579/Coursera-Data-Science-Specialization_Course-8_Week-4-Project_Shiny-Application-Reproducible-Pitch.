library(shiny)
library(DT) # A Wrapper of the JavaScript Library 'DataTables'

fluidPage(
    titlePanel(strong("Iris Selector")),
    #Documentation and how to use.
    h5(strong("Documentation")),
    p("This app is a simple Iris Selector which tables the Iris dataset from R,
      based on Species selection using a highly 'sophisticated algorithmn'."),
    p(em("To use the selector, simply choose species from the drop down or key
         a search term in the search box.")),
    
    # Create a Row for selectInputs
    fluidRow(
        column(4, selectInput("species", "Species:",
                           c("All", unique(as.character(iris$Species))))
        )
    ),
    # Create table output.
    dataTableOutput("table")
)