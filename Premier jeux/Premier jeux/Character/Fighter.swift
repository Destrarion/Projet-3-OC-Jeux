//
//  Fighter.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 07/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation


class Fighter : Character {
    
    override init(name : String, lifepoint : Int, strenghtAtk : Int , weaponequiped : Weapon) {
        
        super.init(name: name, lifepoint: lifepoint, strenghtAtk: strenghtAtk,  weaponequiped : weaponequiped)
    }
    convenience init (name : String) {
        self.init(name : name ,lifepoint: 100, strenghtAtk: 10 ,weaponequiped : none)
    }
    
}
