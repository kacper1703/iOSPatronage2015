import UIKit

protocol DoNauczenia {
    var czyNauczony: Bool { get }
}

class Fiszka:DoNauczenia {
    var tekstAwers = ""
    var tekstRewers = ""
    var czyNauczony:Bool
    var listaPodpowiedzi:[typPodpowiedzi] = []
    
    enum typPodpowiedzi {
        case Tekst(tekst:String)
        case Obraz(obraz:UIImage)
        case Dźwięk(dźwięk:NSURL) //URL do dźwięku
        case Współrzędne(x:Float,y:Float) //przy pracy mapami (geografia, nawigacja morska)
        }
    
    init(awers:String,rewers:String,listaZPodpowiedziami:[typPodpowiedzi],czyNauczony:Bool){
        self.tekstAwers = awers
        self.tekstRewers = rewers
        self.listaPodpowiedzi = listaZPodpowiedziami
        self.czyNauczony = czyNauczony
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

//dla uproszczenia lista z podpowiedziami jest wszędzie taka sama
var test1 = Fiszka(awers: "Kanada", rewers: "Ameryka Północna", listaZPodpowiedziami: [podpowiedz1Test1,podpowiedz2Test1],czyNauczony: false)
var test2 = Fiszka(awers: "Nigeria", rewers: "Afryka", listaZPodpowiedziami: [podpowiedz1Test1,podpowiedz2Test1],czyNauczony: false)
var test3 = Fiszka(awers: "Brazylia", rewers: "Ameryka Południowa", listaZPodpowiedziami: [podpowiedz1Test1,podpowiedz2Test1],czyNauczony: true)
var test4 = Fiszka(awers: "Polska", rewers: "Europa", listaZPodpowiedziami: [podpowiedz1Test1,podpowiedz2Test1],czyNauczony: true)

func wypiszNauczoneFiszki(tablicaInput:[Fiszka]) -> ([Fiszka]) {
    
    var tablicaOutput:[Fiszka] = []
    
    for element in tablicaInput {
        if element.czyNauczony {
            tablicaOutput.append(element)
        }
    }
    return tablicaOutput
    
}

let tablica1 = [test1,test2,test3,test4]

var tablica2 = wypiszNauczoneFiszki(tablica1)



