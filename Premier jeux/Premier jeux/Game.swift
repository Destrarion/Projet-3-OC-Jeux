//
//  Game.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 18/07/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Game{
    var listOfPlayer : [Player] = []
    
    func teamCreation(){
       let player = Player()
        player.addNamePlayer()
        player.pickingCharacter()
        listOfPlayer.append(player)
    }
    

    func attack(player : Player, ennemyPlayer :Player) {
    
    // print de l'équipe adverse
        print("There's Unwanted ennemy ! Wich enemy you want to kill it first ?"
            + "\n1. \(ennemyPlayer.listOfCharacter[0].name).\(ennemyPlayer.listOfCharacter[0].lifepoint) lifepoint, \(ennemyPlayer.listOfCharacter[0].strenghtAtk)"
            + "\n2. \(ennemyPlayer.listOfCharacter[1].name).\(ennemyPlayer.listOfCharacter[1].lifepoint) lifepoint, \(ennemyPlayer.listOfCharacter[1].strenghtAtk)"
            + "\n3. \(ennemyPlayer.listOfCharacter[2].name).\(ennemyPlayer.listOfCharacter[2].lifepoint) lifepoint, \(ennemyPlayer.listOfCharacter[2].strenghtAtk)")
    
    // décide quel ennemie va se faire attaquer
        if let decision = readLine(){
            let trimmeddecision = decision.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
            let choosen : Character = player.selectCharacter()
    // partie du personnage qui attaque
            switch trimmeddecision{
            case "1" :
                choosen.atkfunction(target:ennemyPlayer.listOfCharacter[0], caster: choosen)
                print("\(ennemyPlayer.listOfCharacter[0].name) taken \(choosen.strenghtAtk) damage and have now \(ennemyPlayer.listOfCharacter[0].lifepoint) lifepoint")
                
            case "2" :
                 choosen.atkfunction(target:ennemyPlayer.listOfCharacter[1], caster:  choosen)
                 print("\(ennemyPlayer.listOfCharacter[1].name) taken \(choosen.strenghtAtk) damage and have now \(ennemyPlayer.listOfCharacter[1].lifepoint) lifepoint")
                
            case "3" :
                 choosen.atkfunction(target:ennemyPlayer.listOfCharacter[2], caster:  choosen)
                 print("\(ennemyPlayer.listOfCharacter[2].name) taken \(choosen.strenghtAtk) damage and have now \(ennemyPlayer.listOfCharacter[2].lifepoint) lifepoint")
                
            default:
                print("You haven't choosen a ennemy to kill.")
            }
            
        }
    
    
        
}

}
