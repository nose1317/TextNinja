library(testthat)
library(TextNinja)

# Test clean_text function
test_that("clean_text works correctly", {
  # Test with regular text
  text <- "Hello, World!"
  result <- clean_text(text)
  expect_equal(result, "hello world")

  # Test with extra spaces and numbers
  text <- "   This is 123   an Example!!!   "
  result <- clean_text(text)
  expect_equal(result, "this is an example")

  # Test with already clean text
  text <- "Clean Text"
  result <- clean_text(text)
  expect_equal(result, "clean text")

  # Test with text that has only spaces
  text <- "     "
  result <- clean_text(text)
  expect_equal(result, "")
})

# Test generate_ngrams function
test_that("generate_ngrams works correctly", {
  text <- "This is a simple text example"

  # Test bigrams (n=2)
  result <- generate_ngrams(text, 2)
  expected <- c("This is", "is a", "a simple", "simple text", "text example")
  expect_equal(result, expected)

  # Test trigrams (n=3)
  result <- generate_ngrams(text, 3)
  expected <- c("This is a", "is a simple", "a simple text", "simple text example")
  expect_equal(result, expected)

  # Test edge case with very short text
  short_text <- "Hello"
  result <- generate_ngrams(short_text, 2)
  expect_equal(result, character(0))  # No n-grams for short text
})

# Test count_words function (changed from word_count)
test_that("count_words works correctly", {
  # Test with normal sentence
  text <- "This is an example sentence."
  result <- count_words(text)
  expect_equal(result$count[result$word == "Total"], 5)  # The sentence has 5 words

  # Test with sentence containing punctuation
  text <- "Hello, world! How are you?"
  result <- count_words(text)
  expect_equal(result$count[result$word == "Total"], 5)  # The sentence has 5 words

  # Test with single word
  text <- "Hello"
  result <- count_words(text)
  expect_equal(result$count[result$word == "Total"], 1)  # The text contains 1 word

  # Test with empty text
  text <- ""
  result <- count_words(text)
  expect_equal(result$count[result$word == "Total"], 0)  # No words in an empty string

  # Test with multiple spaces
  text <- "   "
  result <- count_words(text)
  expect_equal(result$count[result$word == "Total"], 0)  # No words, just spaces

  # Test with sentence that has extra spaces between words
  text <- "This   is   a   test."
  result <- count_words(text)
  expect_equal(result$count[result$word == "Total"], 4)  # The sentence has 4 words
})
