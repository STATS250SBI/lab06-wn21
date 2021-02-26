shuffle_two_groups <- function(d) {
  # Get the names of the original data
  dnames <- names(d)
  # Create a new data.frame in which the first column is the same as in d and
  # the second column is a permutation of the second column of d.
  x <- data.frame(d[, 1],
                  d[sample(1:nrow(d), size = nrow(d), replace = FALSE), 2])
  # Give our new data.frame the same names as the input
  names(x) <- dnames
  # Return the new data.frame
  x
}

