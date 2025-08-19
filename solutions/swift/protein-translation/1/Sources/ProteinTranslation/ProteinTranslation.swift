enum TranslationError: Error {
    case invalidCodon
}

func translationOfRNA(rna: String) throws -> [String] {
    let codonTable: [String: String] = [
        "AUG": "Methionine",
        "UUU": "Phenylalanine",
        "UUC": "Phenylalanine",
        "UUA": "Leucine",
        "UUG": "Leucine",
        "UCU": "Serine", 
        "UCC": "Serine", 
        "UCA": "Serine", 
        "UCG": "Serine",
        "UAU": "Tyrosine", 
        "UAC": "Tyrosine",
        "UGU": "Cysteine", 
        "UGC": "Cysteine",
        "UGG": "Tryptophan",
        "UAA": "STOP", 
        "UAG": "STOP", 
        "UGA": "STOP"
    ]
    
    var proteins: [String] = []
    let rnaChars = Array(rna)
    var i = 0
    
    while i < rnaChars.count {
        if i + 2 >= rnaChars.count {
            throw TranslationError.invalidCodon
        }
        
        let codon = String(rnaChars[i...i+2])
        i += 3
        
        guard let protein = codonTable[codon] else {
            throw TranslationError.invalidCodon
        }
        
        if protein == "STOP" { break }
        proteins.append(protein)
    }
    
    return proteins
}
