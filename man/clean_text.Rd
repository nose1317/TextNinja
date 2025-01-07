\name{clean_text}
\alias{clean_text}
\title{Clean and preprocess text}
\description{
  This function takes a text input and returns a cleaned version of the text with lowercased words and removed punctuation.
}
\usage{
clean_text(text)
}
\arguments{
  \item{text}{A character vector or string containing the text to be cleaned.}
}
\value{
  A cleaned version of the input text with punctuation removed and all letters converted to lowercase.
}
\examples{
text <- "Hello, World!"
clean_text(text)
}
