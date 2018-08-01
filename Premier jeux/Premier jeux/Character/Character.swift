//
//  Character.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 07/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Character {
    var name : String
    var lifepoint : Int
    var strenghtAtk : Int
    
    init (name : String, lifepoint : Int, strenghtAtk : Int){
        self.name = name
        self.lifepoint = lifepoint
        self.strenghtAtk = strenghtAtk
    }
    func atkfunction (target: Character, caster : Character){
        target.lifepoint -= caster.strenghtAtk
    }
    
    func isUnderZeroLifepoint(player : Player, character : Character) {
        
        if character.lifepoint <= 0 {
            print("\(character.name)")
            var numbercheckinlist = 0
            for _ in player.listOfCharacter {
                if player.listOfCharacter[numbercheckinlist].name == character.name{
                    player.listOfCharacter.remove(at: numbercheckinlist)
                    print("character removed")
                }
                numbercheckinlist += 1
            }
        }
    }
    
    
}
