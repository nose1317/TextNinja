clean_text <- function(text) {
  # Convert to lowercase
  text <- tolower(text)

  # Remove punctuation
  text <- gsub("[[:punct:]]", "", text)

  # Remove numbers
  text <- gsub("[0-9]", "", text)

  # Remove extra spaces
  text <- gsub("\\s+", " ", text)

  # Strip leading/trailing whitespace
  text <- trimws(text)

  return(text)
}
