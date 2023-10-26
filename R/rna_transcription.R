#' rna_transcription
#'
#' @param dna this is a sequence of dna made up of A,T,C,G
#'
#' @return a rna sequence with T replaced with U from dna
#' @export
rna_transcription <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
