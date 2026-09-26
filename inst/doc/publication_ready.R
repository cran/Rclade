## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 10,
  fig.height = 7
)

## ----palette------------------------------------------------------------------
library(Rclade)
data(example_tree)

# Default viridis palette
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE)
print(p)

## ----custom_colors------------------------------------------------------------
# Custom color mapping for specific groups
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE,
                   color_mapping = c("Proteobacteria" = "#E41A1C",
                                     "Firmicutes" = "#377EB8"))
print(p)

## ----legend-------------------------------------------------------------------
# Inside the plot (default)
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE,
                   legend_position = c(0.05, 0.85))

# Standard positions
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE,
                   legend_position = "right")

## ----clade_labels-------------------------------------------------------------
p <- plot_timetree(example_tree, rank = "phylum",
                   taxonomy_format = "GTDB",
                   add_timescale = FALSE,
                   show_clade_label = TRUE)
print(p)

## ----quality------------------------------------------------------------------
summarize_taxonomy_quality(example_tree$tip.label, format = "GTDB")

## ----batch, eval = FALSE------------------------------------------------------
# batch_plot(input_dir = "trees/",
#            output_dir = "figures/",
#            pattern = "*.tre",
#            rank = "phylum",
#            taxonomy_format = "GTDB")

## ----reproducibility, eval = FALSE--------------------------------------------
# save_session_info("session_info.txt")

