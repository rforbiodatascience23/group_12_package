library(testthat)

test_that("random sequence creation works", {
  sequence <- randomseq(2)
  expect_equal(nchar(sequence), 2)  # Check if the character count is 2
  expect_match(sequence, "^[ATGC]+$")  # Check if the sequence contains only A, T, G, or C
})
