\name{count_words}
\alias{count_words}
\title{Count the frequency of words in a text}
\description{
  This function takes a text input and returns a data frame with words and their corresponding frequency counts.
  It handles punctuation, extra spaces, and includes a row showing the total count of words in the text.
}
\usage{
count_words(text)
}
\arguments{
  \item{text}{A character vector or string containing the text to be analyzed.}
}
\value{
  A data frame with two columns: \code{word} (the word) and \code{count} (the frequency count).
  Additionally, there is a row with the word \code{Total} and the total count of words in the text.
}
\examples{
text <- "This is a simple example. This example is simple."
count_words(text)
# Expected output:
#    word count
# 1  This     2
# 2    is     2
# 3     a     1
# 4 simple     2
# 5 example     2
# 6  Total     7
}
