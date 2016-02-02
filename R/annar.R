

Face <- c("king", "queen","jack", "ten","nine","eight","seven","six","five","four","three","two","ace")
Suit <- c("spades","clubs", "diamonds", "hearts")
Value = 13:1
deck <- data.frame(face = rep(Face, 4), suit = rep(Suit, each = 13), value = rep(Value, 4), stringsAsFactors = FALSE)

#' Shuffle
#'
#' @param cards A value chosen from a deck.
#'
#' @return Random cards being chosen showing face, suit, and value.
#' @export
#'
#' @examples
#'deck2[1:6, ]
#'deck2[2,3]
shuffle<- function(cards){
  index <- sample(dim(cards)[1], size = dim(cards)[1], replace = FALSE)
  cards[index, ]
}
deck2 <- shuffle(cards = deck)
deck2[1:5, ]
