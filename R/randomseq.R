#' Creation of random DNA sequence
#'
#' @param seq_length length of the sequence to be created
#'
#' @return a sequence of length 'seq_length' in a form of a string
#' @export
#'
#'
randomseq <- function(seq_length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  seq_str <- paste0(nucleotides, collapse = "")
  return(seq_str)
}
