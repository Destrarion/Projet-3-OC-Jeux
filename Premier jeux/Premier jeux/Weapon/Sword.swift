import Foundation

class Sword : Weapon {
    override init (stats : Int, name : String){
        super.init(stats: stats, name: name)
    }
    
}

var swordOfThunder = Sword (stats: 7, name: "Sword of thunder")
