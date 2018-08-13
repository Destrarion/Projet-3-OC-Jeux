//
//  Mage.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 07/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Mage : Character{
    override init(name : String, lifepoint : Int, strenghtAtk : Int, weaponequiped : Weapon) {
        
        super.init(name: name, lifepoint: lifepoint, strenghtAtk: strenghtAtk, weaponequiped : weaponequiped)
    }
    convenience init (name : String, weaponequiped : Weapon) {
        self.init(name : name ,lifepoint: 85, strenghtAtk: 15 , weaponequiped : weaponequiped)
    }
    override func atkfunction(target: Character) {
        target.lifepoint += self.strenghtAtk
    }
    
}
