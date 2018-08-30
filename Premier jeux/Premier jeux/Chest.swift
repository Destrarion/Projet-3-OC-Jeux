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
    static let allWeapon : [Weapon] = [axeOfTheMountain,swordOfThunder,staffOfTheHeaven]
    var weaponlooted : Weapon
    
    init (weaponlooted : Weapon){
        self.weaponlooted = weaponlooted
    }
    //function for discovering the weapon in the chest
    func gettingObjectFromChest (character : Character) -> Weapon {
        if character is Mage {
                let random = Int(arc4random_uniform(UInt32(Chest.allWeapon.count)))
            weaponlooted = Chest.allWeapon[random]
            if weaponlooted is Staff{
                    return weaponlooted
            }
            else{
                return gettingObjectFromChest(character: character)
            }
        }
        let random = Int(arc4random_uniform(UInt32(Chest.allWeapon.count)))
        weaponlooted = Chest.allWeapon[random]
        if weaponlooted is Staff{
            return gettingObjectFromChest(character: character)
        }else{
            return weaponlooted
        }
    }
        
    
}

var chest = Chest (weaponlooted: none)
