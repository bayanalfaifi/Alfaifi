
rec_time <- function(.d) {
  ui <- miniPage(
    gadgetTitleBar("Recipie cook and prep time"),
    miniTabstripPanel(
      miniTabPanel(
        "Parameters",
        icon = icon("sliders"),
        miniContentPanel(
          selectInput(
            "ingr",
            "Please select ingredients",
            ingr_list,
            selected = "sugar",
            multiple = TRUE,
            selectize = TRUE,
            width = NULL,
            size = NULL
          ),
          selectInput(
            "flav",
            "Please select flavor",
            flavor_profile,
            selected = "sweet",
            multiple = FALSE,
            selectize = TRUE,
            width = NULL,
            size = NULL
          )
        )
      ),
      miniTabPanel(
        "Cook Time",
        icon = icon("text"),
        miniContentPanel(
          textOutput("cook_time")
        )
      ),
      miniTabPanel(
        "Prep Time",
        icon = icon("text"),
        miniContentPanel(
          textOutput("prep_time")
        )
      )


    )
  )
  # Define layout, inputs, outputs))

  server <- function(input, output, session) {
    # Define reactive expressions, outputs, etc.

    output$cook_time <- renderText({
      as.character(results_cook_time())
    })

    output$prep_time <- renderText({
      as.character(results_prep_time())
    })

    user_selection <-
      reactive({
        ingredients %>%
          mutate(id=1L) %>%
          select(id, ingredient) %>%
          distinct() %>%
          mutate(value = as.integer(ingredient %in% input$ingr)) %>%
          mutate( flavor_profile = input$flav) %>%
          pivot_wider(names_from = "ingredient", values_from = "value")
      })

    results_cook_time <-
      reactive ({
        predict(cook_time_fit, new_data = user_selection())
      })

    results_prep_time <-
      reactive ({
        predict(prp_time_fit, new_data = user_selection())
      })

    # When the Done button is clicked, return a value
    observeEvent(input$done, {
      returnValue <- ...
      stopApp(returnValue)
    }
    )
  }

  runGadget(ui, server)
}
