import Foundation

class Collosus : Character {
    override init(name : String, lifepoint : Int, strenghtAtk : Int, weaponequiped : Weapon) {
        
        super.init(name: name, lifepoint: lifepoint, strenghtAtk: strenghtAtk, weaponequiped : weaponequiped)
    }
    convenience init (name : String) {
        self.init(name : name ,lifepoint: 200, strenghtAtk: 3 , weaponequiped : none)
    }
    
}
