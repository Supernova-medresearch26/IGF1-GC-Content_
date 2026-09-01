lines <- readLines("sequence.fasta")
cat("FASTA file successfully read\n")
cat("Number of lines:", length(lines), "\n")
# Remove FASTA header and blank lines
sequence <- paste(
  lines[!grepl("^>", lines) & nzchar(trimws(lines))],
  collapse = ""
)

# Convert sequence to uppercase
sequence <- toupper(sequence)

# Count nucleotides
A <- nchar(gsub("[^A]", "", sequence))
T <- nchar(gsub("[^T]", "", sequence))
G <- nchar(gsub("[^G]", "", sequence))
C <- nchar(gsub("[^C]", "", sequence))

# Calculate GC content
GC_content <- ((G + C) / nchar(sequence)) * 100

# Display results
cat("Sequence length =", nchar(sequence), "\n")
cat("A =", A, "\n")
cat("T =", T, "\n")
cat("G =", G, "\n")
cat("C =", C, "\n")
cat("GC content =", round(GC_content, 2), "%\n")