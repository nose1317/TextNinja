\name{generate_ngrams}
\alias{generate_ngrams}
\title{Generate n-grams from text}
\description{
  This function generates n-grams from the input text, where n is specified by the user.
}
\usage{
generate_ngrams(text, n)
}
\arguments{
  \item{text}{A character vector or string containing the text to generate n-grams from.}
  \item{n}{An integer specifying the number of words in each n-gram (e.g., 2 for bigrams, 3 for trigrams).}
}
\value{
  A character vector of n-grams generated from the input text.
}
\examples{
text <- "This is a simple example"
generate_ngrams(text, 2)
generate_ngrams(text, 3)
}
