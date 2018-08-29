import Foundation

class Axe : Weapon {
    override init (stats : Int, name : String){
        super.init(stats: stats, name: name)
    }
    
}

var axeOfTheMountain = Axe (stats : 15 , name : "Axe of the Mountain ")
