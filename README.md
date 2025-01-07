
# TextNinja

TextNinja is an R package designed for text analysis, cleaning, and natural language processing (NLP) tasks. This package provides functions to clean, count, and generate n-grams from text data. It is designed to help simplify and streamline common text processing tasks.

## Features

- **clean_text**: Cleans the text by converting it to lowercase, removing punctuation, and extra spaces.
- **count_words**: Counts the frequency of words in a given text.
- **generate_ngrams**: Generates n-grams (bigrams, trigrams, etc.) from a text input.

## Installation

To install the `TextNinja` package, use the following code in R:

` devtools::install_github("your-username/TextNinja")

## Functions

### `clean_text`

This function cleans the text by:
1. Converting all characters to lowercase.
2. Removing punctuation.
3. Removing extra spaces.

**Usage:**

` clean_text(text)`

**Arguments:**
- text: A character vector or string containing the text to be cleaned.

**Example:**

` text <- "Hello, World!"`
  `clean_text(text)`
  
    Output: "hello world"

---

### 2. `count_words`

This function counts the frequency of each word in the text.

**Usage:**

` count_words(text)`

**Arguments:**
- text: A character vector or string containing the text to be analyzed.

**Returns:**
A data frame with two columns: `word` (the word) and `count` (the frequency count).

### 3. `generate_ngrams`

This function generates n-grams (e.g., bigrams, trigrams) from a given text.

**Usage:**

` generate_ngrams(text, n)`

**Arguments:**
- text: A character vector or string containing the text to generate n-grams from.
- n: The number of words in each n-gram (e.g., * for bigrams, 3 for trigrams).

**Example:**

` text <- "This is a simple example"`
  ` generate_ngrams(text, *)`
  
   ` Output: 
   ` [#] "This is" "is a"    "a simple" "simple example"

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

If you'd like to contribute to the development of `TextNinja`, feel free to fork the repository, submit issues, or create pull requests. All contributions are welcome!
