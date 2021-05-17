#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export




sing_day2 <- function(dataset, dayword, day, fullphrase)

  for (i in seq_along(fullphrase)) {

    cat("On the", dayword, "day of Christmas\n")
    cat("My true love gave to me:\n")

    print(i)
    j<- i+12
    while (j>0){
      cat(paste(fullphrase[j], collapse = "\n"), "\n\n")
      j<- j-1
    }
  }

pmap(xmas, ~sing_day2(xmas,..2, ..1, ..7))


list(xmas$Full.Phrase)


sing_day2 <- function(dataset, dayword, day, fullphrase)
  for (i in seq_along(list(fullphrase))) {
cat("On the", dayword, "day of Christmas\n")
 cat("My true love gave to me:\n")
cat(paste(fullphrase[i:1], collapse = "\n"), "\n\n")
}
pmap(xmas, ~sing_day2(xmas,..2, ..1, ..7))




sing_day <- function(dataset, day, line, phrase_col){
  phrases <- dataset %>% pull({{phrase_col}})
  paste("On the", day, "day of Christmas my true love gave to me", phrase_col)
}
pmap(xmas, ~sing_day(xmas, ..2, ..1, ..7))


rlang::last_error()
