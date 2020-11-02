class Complement

COMPLEMENTS = {
G: "C",
C: "G",
T: "A",
A: "U"
}
  def self.of_dna(nucleotides)
    rna_output = ""
    nucleotides
      .split("")
      .each do |n| 
        COMPLEMENTS[n.to_sym] ? rna_output += COMPLEMENTS[n.to_sym] : return
      end
    rna_output
  end
end