//Solution goes in Sources
//Solution goes in Sources
class DNA {
    let strand: String

    init?(strand: String) {
        self.strand = strand
    }

    func count(_ myChar: Character) -> Int {
        self.strand.filter { $0 == myChar }.count
    }

    func counts() -> [String : Int] {
        let thymineNumber: Int = count("T")
        let adenineNumber: Int = count("A")
        let cytosineNumber: Int = count("C")
        let guanineNumber: Int = count("G")

        return ["T": thymineNumber, "A": adenineNumber, "C": cytosineNumber, "G": guanineNumber]
    }

}

