//
//  Dwarf.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 07/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Dwarf : Character{
    override init(name : String, lifepoint : Int, strenghtAtk : Int, weaponequiped : Weapon) {
        
        super.init(name: name, lifepoint: lifepoint, strenghtAtk: strenghtAtk,weaponequiped : weaponequiped)
    }
    convenience init (name : String, weaponequiped : Weapon) {
        self.init(name : name ,lifepoint: 65, strenghtAtk: 55, weaponequiped : weaponequiped )
    }
    
    
}
