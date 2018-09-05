import Foundation

class Dwarf : Character{
    override init(name : String, lifepoint : Int, strenghtAtk : Int, weaponequiped : Weapon) {
        
        super.init(name: name, lifepoint: lifepoint, strenghtAtk: strenghtAtk,weaponequiped : weaponequiped)
    }
    convenience init (name : String) {
        self.init(name : name ,lifepoint: 65, strenghtAtk: 100, weaponequiped : none )
    }
    
    
}
