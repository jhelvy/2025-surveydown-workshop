
surveycode <- function() {
  survey_text <- '---
format: html
echo: false
warning: false
---

```{r}
library(surveydown)
```

::: {#welcome .sd-page}

# Welcome to our survey!

```{r}
sd_question(
  type  = "mc",
  id    = "penguins",
  label = "What\'s your favorite penguin?", #<<
  option = c(
    "Adélie"    = "adelie",
    "Chinstrap" = "chinstrap",
    "Gentoo"    = "gentoo"
  )
)

sd_next()
```

:::

::: {#end .sd-page}

This is the last page of the survey.

```{r}
sd_close()
```

:::'

  cat(sprintf("````{.r}\n"))
  cat(survey_text)
  cat("\n````")
}

appcode <- function(highlights = NULL) {
  app_text <- '# Load Package
library(surveydown)

# Database Credentials
sd_db_config()

# Connect to Database
db <- sd_db_connect()

# Server Setup
server <- function(input, output, session) {

  # Skip logic
  sd_skip_forward(...)

  # Conditional display
  sd_show_if(...)

  # Server settings
  sd_server(
    db = db,
    ...
  )
}

# Launch Survey
shiny::shinyApp(ui = sd_ui(), server = server)'

  cat(fence_start(highlights))
  cat(app_text)
  cat('\n````')
}