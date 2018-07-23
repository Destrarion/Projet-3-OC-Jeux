//
//  Game.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 18/07/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Game{
    func teamCreation(){
       let player = Player()
        player.addNamePlayer()
        player.pickingCharacter()
        
    }
    

    func attack(player : Player, ennemyPlayer :Player) {
    // print avec le personnage sélectionner
        print("\(player.selectCharacter()) is now ready to attack your ennemie")
    
    
    // print de l'équipe adverse
        print("There's Unwanted ennemy ! Wich enemy you want to kill it first ?"
            + "\n1. \(ennemyPlayer.listOfCharacter[0]).\(ennemyPlayer.listOfCharacter[0].lifepoint) lifepoint, \(ennemyPlayer.listOfCharacter[0].strenghtAtk)"
            + "\n2. \(ennemyPlayer.listOfCharacter[1]).\(ennemyPlayer.listOfCharacter[1].lifepoint) lifepoint, \(ennemyPlayer.listOfCharacter[1].strenghtAtk)"
            + "\n3. \(ennemyPlayer.listOfCharacter[2]).\(ennemyPlayer.listOfCharacter[2].lifepoint) lifepoint, \(ennemyPlayer.listOfCharacter[2].strenghtAtk)")
    
    // décide quel ennemie va se faire attaquer
        if let decision = readLine(){
    // partie du personnage qui attaque
            switch decision{
            case "1" :
                player.selectCharacter().atkfunction(target:ennemyPlayer.listOfCharacter[0], caster: player.selectCharacter())
            case "2" :
                player.selectCharacter().atkfunction(target:ennemyPlayer.listOfCharacter[1], caster: player.selectCharacter())
            case "3" :
                player.selectCharacter().atkfunction(target:ennemyPlayer.listOfCharacter[1], caster: player.selectCharacter())
            default:
                print("You haven't choosen a ennemy to kill.")
            }
            
        }
        
    
        
        
}

}
