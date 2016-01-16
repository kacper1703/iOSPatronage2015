import UIKit


class Fiszka {
    var tekstAwers = ""
    var tekstRewers = ""
    var czyNauczony = false
    var listaPodpowiedzi:[typPodpowiedzi] = []
    
    enum typPodpowiedzi
    {
        case Tekst(tekst:String)
        case Obraz(obraz:UIImage)
        case Dźwięk(dźwięk:NSURL) //URL do dźwięku
        case Współrzędne(x:Float,y:Float) //przy pracy mapami (geografia, nawigacja morska)
        
        
        func descriptionEnum() -> String
        {
            switch (self)
            {
            case .Tekst(let tekst):
                return tekst
            case .Obraz(let obraz):
                return String(obraz)
            case .Dźwięk(let dźwięk):
                return String(dźwięk)
            case .Współrzędne(let x, let y):
                return "\(x), \(y)"
            }
        }
        
    }
    
    init(awers:String,rewers:String,listaZPodpowiedziami:[typPodpowiedzi]){
        self.tekstAwers = awers
        self.tekstRewers = rewers
        self.listaPodpowiedzi = listaZPodpowiedziami
    }
    
    func description()-> String {
        
        var podpowiedziString:String=""
        let count = listaPodpowiedzi.count
        
        for (index,podpowiedz) in listaPodpowiedzi.enumerate() {

            if (index == count-1) {
                podpowiedziString += "\(podpowiedz.descriptionEnum())"
            }
            else {
                podpowiedziString += "\(podpowiedz.descriptionEnum()), "
            }
            
        }
    return "\(tekstAwers) -> \(tekstRewers) [ \(podpowiedziString) ]"
    }
}

let testowyObrazek:UIImage = UIImage(named: "Flag_Canada")!

var podpowiedz1Test1:Fiszka.typPodpowiedzi = .Tekst(tekst: "Blisko USA")
var podpowiedz2Test1:Fiszka.typPodpowiedzi = .Współrzędne(x: 62.746867, y: -120.773575)
var podpowiedz3Test1:Fiszka.typPodpowiedzi = .Obraz(obraz: testowyObrazek)

var test1 = Fiszka(awers: "Kanada", rewers: "Ameryka Północna", listaZPodpowiedziami: [podpowiedz1Test1,podpowiedz2Test1,podpowiedz3Test1])


test1.description()

