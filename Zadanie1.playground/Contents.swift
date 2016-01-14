import UIKit

class Fiszka {
    var tekstAwers = ""
    var tekstRewers = ""
    var czyNauczony = false
    var listaPodpowiedzi:[String] = []
    
    init(awers:String,rewers:String,listaZPodpowiedziami:[String]){
        self.tekstAwers = awers
        self.tekstRewers = rewers
        self.listaPodpowiedzi = listaZPodpowiedziami
    }
    
    func description()-> String {
        return "\(tekstAwers) -> \(tekstRewers) [\(listaPodpowiedzi.joinWithSeparator(", "))]"
    }
}

var test1 = Fiszka(awers: "Wąż", rewers: "Snake", listaZPodpowiedziami: ["Prawie jak nazwisko Severusa z Harry'ego Pottera", "Nazwa popularnej gry"])

test1.description()
test1.czyNauczony