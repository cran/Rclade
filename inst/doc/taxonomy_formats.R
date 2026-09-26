## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 10,
  fig.height = 7
)

## ----auto---------------------------------------------------------------------
library(Rclade)

# Load example data
data(example_tree)

# Auto-detection works in most cases
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "auto",
                   add_timescale = FALSE)

## ----quality------------------------------------------------------------------
labels <- example_tree$tip.label
summarize_taxonomy_quality(labels, format = "GTDB")

## ----manual-------------------------------------------------------------------
# GTDB format
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE)
print(p)

## ----ncbi, eval = FALSE-------------------------------------------------------
# # NCBI format (requires NCBI-labeled tree)
# p <- plot_timetree(ncbi_tree, rank = "phylum",
#                    taxonomy_format = "NCBI",
#                    add_timescale = FALSE)

## ----custom, eval = FALSE-----------------------------------------------------
# p <- plot_timetree(tree, rank = "phylum",
#                    add_timescale = FALSE,
#                    taxonomy_format = "custom_regex",
#                    custom_patterns = list(
#                      domain = "Domain:([^|]+)",
#                      phylum = "Phylum:([^|]+)"
#                    ))

## ----delimiter_mode, eval = FALSE---------------------------------------------
# # Default reverse mode
# p <- plot_timetree(tree, rank = "phylum",
#                    add_timescale = FALSE,
#                    taxonomy_format = "custom_rank",
#                    taxonomy_delimiter_mode = "reverse")
# 
# # Segment mode for labels with underscores in taxon names
# p <- plot_timetree(tree, rank = "phylum",
#                    add_timescale = FALSE,
#                    taxonomy_format = "custom_rank",
#                    taxonomy_delimiter_mode = "segment")

## ----custom_levels, eval = FALSE----------------------------------------------
# p <- plot_timetree(tree, rank = "phylum",
#                    add_timescale = FALSE,
#                    taxonomy_format = "custom_rank",
#                    taxonomy_levels = list(
#                      codes = c("k", "d", "p", "c", "o", "f", "g", "s", "ss"),
#                      names = c("_k_", "_d_", "_p_", "_c_",
#                                "_o_", "_f_", "_g_", "_s_", "_ss_")
#                    ))

