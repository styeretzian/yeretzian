head_selected <- function() {
  # Get the active document context (RStudio editor)
  context <- rstudioapi::getActiveDocumentContext()

  # Extract the selected text
  selected_text <- context$selection[[1]]$text

  # Check if anything is selected
  if (nzchar(selected_text)) {
    # Send the glimpse command to the console and execute it
    rstudioapi::sendToConsole(paste0("head(", selected_text, ")"), execute = TRUE)
  } else {
    message("No text selected.")
  }
}
