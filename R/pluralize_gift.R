#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
#'

pluralize_gift <- function(gift){
gift <- gift %>%
paste0("s")
new <- gift
str_replace(gift ,"ys$", "ies")
str_replace(gift ,"ooses", "eese")
return(new)
}
pluralize_gift (xmas$Gift.Item)

xmas <- xmas %>%
  mutate(Gift.Item = as.vector(Gift.Item))%>%
  mutate(Gift.Item = paste0(xmas$Gift.Item, "s"))%>%
  mutate(Gift.Item = str_replace_all(Gift.Item, "ys$", "ies"))%>%
  mutate(Gift.Item = str_replace_all(Gift.Item, "ooses", "eese"))
