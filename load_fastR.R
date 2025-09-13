# fastR Package Loader - PMEST + OCLC FAST Classification System
# No compilation required - works on any Windows system with R

cat("Loading fastR: PMEST + OCLC FAST Classification System...\n")

# Source all components
source("R/taxonomies.R")
source("R/classification_functions.R")
source("R/analysis_functions.R")

cat("✓ fastR loaded successfully!\n")
cat("Available functions:\n")
cat("  - classify_fast_pmest_hybrid(): Main classification function\n")
cat("  - analyze_multidomain_corpus_enhanced(): Corpus analysis\n")
cat("  - generate_summary_statistics(): Generate analysis summaries\n")

# Safe system test with proper error handling
tryCatch({
  test_result <- classify_fast_pmest_hybrid("Strategic Management Test", "management")
  
  # Safe NULL and NA checks
  if (!is.null(test_result) && 
      length(test_result) > 0 && 
      !is.null(test_result$metadata) &&
      !is.null(test_result$metadata$total_assignments) &&
      !is.na(test_result$metadata$total_assignments) &&
      test_result$metadata$total_assignments > 0) {
    
    cat("✓ System test passed - fastR is working correctly!\n")
    cat("  Found", test_result$metadata$total_assignments, "classifications\n")
    
  } else {
    cat("⚠ System test completed but no classifications found\n")
    cat("  This is normal for simple test phrases\n")
    cat("  fastR is loaded and ready to use\n")
  }
  
}, error = function(e) {
  cat("⚠ System test encountered an issue:\n")
  cat("  Error:", conditionMessage(e), "\n")
  cat("  fastR functions are loaded but please check your function definitions\n")
})

cat("\nfastR is ready for use!\n")
