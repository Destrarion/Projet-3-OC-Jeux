import Foundation


class Fighter : Character {
    
    override init(name : String, lifepoint : Int, strenghtAtk : Int , weaponequiped : Weapon) {
        
        super.init(name: name, lifepoint: lifepoint, strenghtAtk: strenghtAtk,  weaponequiped : weaponequiped)
    }
    convenience init (name : String) {
        self.init(name : name ,lifepoint: 100, strenghtAtk: 10 ,weaponequiped : none)
    }
    
}
