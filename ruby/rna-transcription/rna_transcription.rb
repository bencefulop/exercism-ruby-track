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
        COMPLEMENTS[:"#{n}"] ? rna_output += COMPLEMENTS[:"#{n}"] : return
      end
    rna_output
  end
end