#' translation
#'
#' @param codons RNA sequence consisting of three nucleotides that functions as a unit of genomic data and codes for a specific amino acid or signals the end of protein synthesis.
#' @param polypeptide singlechains of amino acids linked by peptide bonds
#' @return RNA sequence given for the function to operate on and it returns the amino acids sequence
#' @export
#'
translation <- function(codons){
  polypeptide <- paste0(codon_table[codons],
                     collapse = "")
  return(polypeptide)
}

#This function translates RNA sequence into a amino acid chain sequence.
#The RNA sequence has to be divided into the series of codons (three nucleotides coding for a specific amino acid).
#Function translates each codon into an appropriate amino acids in accordance to the codon table.
#Returned result are shown as a sequence of letters corresponding to amino acid one-letter abbreviations.
