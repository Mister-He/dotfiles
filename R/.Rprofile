if (requireNamespace("colorout", quietly = TRUE)) {
    options(vsc.plot = TRUE)  # vscode-R will route graphics to httpgd
}

# Define View() in R.nvim
if (nzchar(Sys.getenv("RNVIM_TMPDIR"))) {
  View <- function(x, title = deparse(substitute(x))) {
    if (!is.data.frame(x) && !is.matrix(x)) {
      stop("View() currently supports data.frame and matrix objects.")
    }

    file <- tempfile(
      pattern = paste0("R-view-", gsub("[^A-Za-z0-9_-]", "_", title), "-"),
      fileext = ".tsv"
    )

    write.table(
      x,
      file = file,
      sep = "\t",
      row.names = FALSE,
      col.names = TRUE,
      quote = FALSE,
      na = ""
    )

    cmd <- sprintf("vd %s", shQuote(file))

    system2(
      "tmux",
      args = c("new-window", shQuote(cmd)),
      wait = FALSE
    )

    invisible(x)
  }
}
