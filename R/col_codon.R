#' Plotting amino acid counts
#'
#' @param seq A data set of codons and amino acid symbols
#'
#' @return A column plot of the count of unique amino acid symbols
#' @export
#'

amino_acid_plot <- function(seq){
  unique_amino_acid_symbols <- seq |>
    stringr::str_split(pattern = stringr::boundary("character"),
                       simplify = TRUE) |>
    as.character() |>
    unique()
  #this code takes the amino acid symbols from the codon table and returns a list of unique symbols

  counts <- sapply(unique_amino_acid_symbols,
                   function(amino_acid) stringr::str_count(string = seq,
                                                           pattern = amino_acid)) |>
    as.data.frame()
  #this code counts the amino acid symbols in the codon table, and returns it as a dataframe.

  colnames(counts) <- c("Counts")
  counts[["Unique_amino_acids"]] <-  rownames(counts)
  #this code sets the x and y for the plot (the unique amino acids and the counts of them)
  my_col_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Unique_amino_acids, y = Counts, fill = Unique_amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")
  #this code creates a column plot
  return(my_col_plot)
  #this code returns the plot
}
