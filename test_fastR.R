# Simple fastR Test
source("R/taxonomies.R")
source("R/classification_functions.R")
source("R/analysis_functions.R")

# Test with very simple inputs
cat("Testing fastR functions...\n")

# Basic test
result1 <- classify_fast_pmest_hybrid("strategic management", "management")
cat("Test 1 - Management: ")
if (!is.null(result1)) {
  cat("✓ Success\n")
  if (!is.null(result1$metadata)) {
    cat("  Assignments:", result1$metadata$total_pmest_assignments, "\n")
  }
} else {
  cat("✗ Failed\n")
}

result2 <- classify_fast_pmest_hybrid("chemical analysis", "chemistry")
cat("Test 2 - Chemistry: ")
if (!is.null(result2)) {
  cat("✓ Success\n")
  if (!is.null(result2$metadata)) {
    cat("  Assignments:", result2$metadata$total_pmest_assignments, "\n")
  }
} else {
  cat("✗ Failed\n")
}

cat("Basic testing complete!\n")
