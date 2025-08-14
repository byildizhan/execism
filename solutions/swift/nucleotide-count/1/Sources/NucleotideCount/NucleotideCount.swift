enum NucleotideCountErrors: Error {
        case invalidNucleotide
    }

class DNA {
    var strand: String
    var nucleotideCount: [String: Int]
    

    
    
    init(strand: String) throws {
        self.strand = strand
        self.nucleotideCount = ["A": 0, "C": 0, "G": 0, "T": 0]
        let nucleotideCountKeys = Array(nucleotideCount.keys)
        for nuc in strand {
          if !(nucleotideCountKeys.contains(String(nuc))) {
            throw NucleotideCountErrors.invalidNucleotide
          }
        }
    }

    func counts() -> [String: Int]? {
        for nucleotide in strand {
            nucleotideCount[String(nucleotide)]! += 1
        }

        return nucleotideCount
    }
}
