import Foundation
class Weapon {
    var name : String
    var stats : Int
    
    init (stats : Int, name :String ){
        self.stats = stats
        self.name = name
    }
}
var none = Weapon (stats: 0, name : "no weapon")



