import UIKit

func tossCoin() -> String {
    print("Tossing a Coin!")
    let rand = arc4random_uniform(100)
    var str: String?
    if rand % 2 == 0{
        str = "Heads"
    }else{
        str = "Tails"
    }
    print(str!)
    return str!
}

tossCoin()
