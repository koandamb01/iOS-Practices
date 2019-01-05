import UIKit

class Person {
    var species = "H. Sapiens"
    var name: String
    init(name: String){
        self.name = name
    }
    
    func speak(){
        print("Hello! I am a \(self.species) and my name is \(self.name)")
    }
}


class Developer: Person {
    var favoriteLanguage: String
    init(name: String, favoriteLanguage: String){
        self.favoriteLanguage = favoriteLanguage
        super.init(name: name)
    }
    
    override func speak() {
        print("Hello! I am a Developer! and my name is \(self.name)")
    }
}


var dev = Developer(name: "Med", favoriteLanguage: "Java")
dev.speak()


