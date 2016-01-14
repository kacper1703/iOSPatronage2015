import UIKit

class Fiszka {
    var tekstAwers = ""
    var tekstRewers = ""
    var czyNauczony = false
    var listaPodpowiedzi:[typPodpowiedzi] = []
    
    enum typPodpowiedzi {
        case Tekst(tekst:String)
        case Obraz(obraz:UIImage)
        case Dźwięk(dźwięk:NSURL) //URL do dźwięku
        case Współrzędne(x:Float,y:Float) //przy pracy mapami (geografia, nawigacja morska)
        }
        
    
    
    init(awers:String,rewers:String,listaZPodpowiedziami:[typPodpowiedzi]){
        self.tekstAwers = awers
        self.tekstRewers = rewers
        self.listaPodpowiedzi = listaZPodpowiedziami
    }
    
    
    func description()-> String {
        
        var podpowiedziString:String=""
        
        for podpowiedz in listaPodpowiedzi {
            podpowiedziString += "\(podpowiedz), "
        }
        
        return "\(tekstAwers) -> \(tekstRewers) [ \(podpowiedziString) ]"
    }
    
    
    
    
}

var podpowiedz1Test1:Fiszka.typPodpowiedzi = .Tekst(tekst: "Blisko USA")
var podpowiedz2Test1:Fiszka.typPodpowiedzi = .Współrzędne(x: 62.746867, y: -120.773575)

var test1 = Fiszka(awers: "Kanada", rewers: "Ameryka Północna", listaZPodpowiedziami: [podpowiedz1Test1,podpowiedz2Test1])


test1.description()

