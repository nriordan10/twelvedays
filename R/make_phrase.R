#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


make_phrase <- function(num_word, item, verb, adjective, location){
  verb <- str_replace_na(verb, "")
  location <- str_replace_na(location, "")
  adjective <- str_replace_na(adjective, "")
 phrase <- str_c (num_word, adjective, item, verb, location, sep = " ")
return (phrase)
}

make_phrase( num_word = "ten", item = "lords", verb = "a-leaping", adjective = "", location = "")
make_phrase(xmas$Day, xmas$Gift.Item, xmas$Verb, xmas$Adjective, xmas$Location)

xmas <- xmas %>%
  mutate(
    Full.Phrase = pmap(xmas, ~make_phrase(..1, ..3, ..4, ..5, ..6))
  )





for (i in seq_along(days)) {
  cat("On the", days[i], "day of Christmas\n")
  cat("My true love gave to me:\n")
  cat(paste(gifts[i:1], collapse = "\n"), "\n\n")
}
