//Solution goes in Sources
import Foundation

class DNA {
    let strand: String

    init?(strand: String) {
        let range = NSRange(location: 0, length: strand.utf16.count)
        let regex = try! NSRegularExpression(pattern: "[ATCG]")
        let result = regex.firstMatch(in: strand, options: [], range: range) != nil
        if result == true {
            self.strand = strand
        } else if strand == "" {
            self.strand = strand
        } else {
            return nil
        }
    }

    func count(_ nucleotide: Character) -> Int {
        self.strand.filter({ $0 == nucleotide }).count
    }

    func counts() -> [String : Int] {
        let thymineNumber: Int = count("T")
        let adenineNumber: Int = count("A")
        let cytosineNumber: Int = count("C")
        let guanineNumber: Int = count("G")

        return ["T": thymineNumber, "A": adenineNumber, "C": cytosineNumber, "G": guanineNumber]
    }
}

