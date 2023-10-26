#' DNA transcription to RNA
#'
#' @param dna_seq An input string representing a DNA sequence
#' @param start An integer specifying the starting position of the trascription. Default value set as 1.
#'
#' @return A character vector of RNA codons
#' @export
#'
transcription <- function(dna_seq, start = 1){
  dna_seq_length <- nchar(dna_seq)
  codons <- substring(dna_seq,
                      first = seq(from = start, to = dna_seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = dna_seq_length, by = 3))
  return(codons)
}
