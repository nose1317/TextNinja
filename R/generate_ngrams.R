generate_ngrams <- function(text, n) {
  words <- strsplit(text, "\\s+")[[1]]
  if (length(words) < n) {
    return(character(0))  # Return empty vector if there aren't enough words
  }
  ngrams <- sapply(1:(length(words) - n + 1), function(i) {
    paste(words[i:(i + n - 1)], collapse = " ")
  })
  return(ngrams)
}
