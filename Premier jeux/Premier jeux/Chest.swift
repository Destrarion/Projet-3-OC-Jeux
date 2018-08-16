//
//  Chest.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 16/08/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

// classe impactant le coffre avant le combat
class Chest {
    let allWeapon : [Weapon] = []
    var weaponlooted : Weapon
    
    init (weaponlooted : Weapon){
        self.weaponlooted = weaponlooted
    }
    
    func gettingObjectFromChest () -> Weapon {
        let random = Int(arc4random_uniform(UInt32(allWeapon.count)))
        weaponlooted = allWeapon[random]
        return weaponlooted
    }
}
