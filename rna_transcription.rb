# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

DICT = {
  "G" => "C",
  "C" => "G",
  "T" => "A",
  "A" => "U",
}

def dna_to_rna(string)
  output = ""
  string.length.times do |i|
    output += DICT[string[i]]
  end
  return output
end

p dna_to_rna("ACGTGGTCTTAA")
