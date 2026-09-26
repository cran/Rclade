## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 10,
  fig.height = 7
)

## ----install, eval = FALSE----------------------------------------------------
# # Install from local source package
# install.packages("path/to/Rclade_1.0.0.tar.gz", repos = NULL, type = "source")

## ----basic--------------------------------------------------------------------
library(Rclade)

# Load built-in example tree (50 tips, GTDB-style labels)
data(example_tree)

# Plot with phylum-level collapsing (no timescale for speed)
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE)
print(p)

## ----titles-------------------------------------------------------------------
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE,
                   main_title = "GTDB Bacterial Tree",
                   sub_title = "50 taxa | Phylum-level collapsing")
print(p)

## ----summarize----------------------------------------------------------------
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE)
summarize_timetree(p)

## ----save, eval = FALSE-------------------------------------------------------
# # Save to PDF
# save_timetree(p, "output.pdf", width = 14, height = 10)
# 
# # One-line pipeline
# # Note: the geological timescale requires an explicit branch-length unit
# # (Rclade does not infer units); pass unit = "Ma" or unit = "Ga".
# plot_timetree(example_tree, rank = "phylum", unit = "Ga", output = "output.pdf")

## ----quality------------------------------------------------------------------
summarize_taxonomy_quality(example_tree$tip.label, format = "GTDB")

