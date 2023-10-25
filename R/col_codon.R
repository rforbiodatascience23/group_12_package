#' Plotting amino acid counts
#'
#' @param codon_table A dataset of codons and amino acid symbols
#'
#' @return A column plot of the unique amino acid symbols
#' @export
#'
# @examples

# This is how I changed the name_mes - I think that the name_me2 and the Name_me2 are different, but I dont know what a good name for Name_me2 should be..???
# name_me1 = amino_acid_plot
# name_me2 = seq
# Name_me2 = Unique_amino_acids
# name_me3 = unique_amino_acid_symbols
# name_me4 = graph_col

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
  #there is something wrong with this code - I dont know what it does, but it gives me NAs as column names and the Name_me2 column is just the row numbers????

  my_col_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Unique_amino_acids, y = Counts, fill = Unique_amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")
  #this code creates a column plot, however it does not seem to be the correct x and y, probably due to some error in the colnames/rownames code section
  return(my_col_plot)
  #this code returns the plot
}
