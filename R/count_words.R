count_words <- function(text) {
  # Split the text into words
  words <- unlist(strsplit(text, "\\s+"))
  words <- words[words != ""]  # Remove empty words

  # If no words are found, return a data frame with Total = 0
  if (length(words) == 0) {
    return(data.frame(word = "Total", count = 0))
  }

  # Count the frequency of each word
  word_freq <- table(words)

  # Convert the table to a data frame
  word_df <- as.data.frame(word_freq, stringsAsFactors = FALSE)

  # Ensure word_df has the correct column names
  colnames(word_df) <- c("word", "count")

  # Add a row for the total word count
  total_count <- sum(word_df$count)
  total_row <- data.frame(word = "Total", count = total_count)
  word_df <- rbind(word_df, total_row)

  return(word_df)
}
