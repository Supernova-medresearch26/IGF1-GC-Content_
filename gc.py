# Program to calculate GC content from a FASTA file

# Function to calculate GC content
def gc_content(sequence):
    """
    Calculate the percentage of Guanine (G) and Cytosine (C)
    nucleotides in a DNA sequence.
    """
    
    # Count the number of G and C nucleotides
    g_count = sequence.count("G")
    c_count = sequence.count("C")
    
    # Calculate GC percentage
    gc_percentage = ((g_count + c_count) / len(sequence)) * 100
    
    return gc_percentage


# Open and read the FASTA file
with open("sequence.fasta", "r") as fasta_file:
    
    # Extract sequence lines and ignore the FASTA header
    sequence = "".join(
        line.strip()
        for line in fasta_file
        if not line.startswith(">")
    )


# Convert sequence to uppercase
sequence = sequence.upper()


# Calculate GC content
result = gc_content(sequence)


# Display results
print("Sequence length:", len(sequence))
print("GC Content:", round(result, 2), "%")