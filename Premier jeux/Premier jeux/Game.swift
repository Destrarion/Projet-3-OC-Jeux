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
    
    func startingGame() {
        print("Hello world!")
        teamCreation()
        teamCreation()
        turnPerTurn(player1: listOfPlayer[0], player2: listOfPlayer[1])
    }
    
    func teamCreation(){
       let player = Player()
        player.addNamePlayer()
        player.pickingCharacter()
        listOfPlayer.append(player)
    }
    
    func attack(player : Player, ennemyPlayer :Player) {
    // print de l'équipe adverse
        print("There's Unwanted ennemy ! Wich enemy you want to kill it first ?")
        for character in ennemyPlayer.listOfCharacter {
            print("\(character.name), \(character.lifepoint) \(character.strenghtAtk)")
        }
        
    // décide quel ennemie va se faire attaquer
        if let decision = readLine(){
            let trimmeddecision = decision.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
            let choosen : Character = player.selectCharacter()
    // partie du personnage qui attaque
            switch trimmeddecision{
            case "\(ennemyPlayer.listOfCharacter[0].name)" :
                choosen.atkfunction(target:ennemyPlayer.listOfCharacter[0], caster: choosen)
                print("\(ennemyPlayer.listOfCharacter[0].name) taken \(choosen.strenghtAtk) damage and have now \(ennemyPlayer.listOfCharacter[0].lifepoint) lifepoint")
                ennemyPlayer.listOfCharacter[0].isUnderZeroLifepoint(player: ennemyPlayer, character: ennemyPlayer.listOfCharacter[0])
                
            case "\(ennemyPlayer.listOfCharacter[1].name)" :
                 choosen.atkfunction(target:ennemyPlayer.listOfCharacter[1], caster:  choosen)
                 print("\(ennemyPlayer.listOfCharacter[1].name) taken \(choosen.strenghtAtk) damage and have now \(ennemyPlayer.listOfCharacter[1].lifepoint) lifepoint")
                ennemyPlayer.listOfCharacter[1].isUnderZeroLifepoint(player: ennemyPlayer, character: ennemyPlayer.listOfCharacter[1])
                
            case "\(ennemyPlayer.listOfCharacter[2].name)" :
                 choosen.atkfunction(target:ennemyPlayer.listOfCharacter[2], caster:  choosen)
                 print("\(ennemyPlayer.listOfCharacter[2].name) taken \(choosen.strenghtAtk) damage and have now \(ennemyPlayer.listOfCharacter[2].lifepoint) lifepoint")
                ennemyPlayer.listOfCharacter[2].isUnderZeroLifepoint(player: ennemyPlayer, character: ennemyPlayer.listOfCharacter[2])
                
            default:
                print("You haven't choosen a ennemy to kill.")
                
            }
            
        }
    }
    
    func turnPerTurn(player1 : Player, player2 : Player){
        var gameEnd = false
        while gameEnd == false{
            attack(player: player1, ennemyPlayer: player2)
            attack(player: player2, ennemyPlayer: player1)
            if player1.listOfCharacter.count == 0  || player2.listOfCharacter.count == 0 {
                gameEnd = true
                print("Game Over")
            }
            
        }
    }
    
    func attack2(player : Player, ennemyPlayer : Player){
        print("\(player.name), It's your turn to play ")
        // choix du personnage du joueur
            // readline et récupération avec (selectcharacter() dans le fichier Player)
            let choosen = player.selectCharacter()
        // vérification si un mage ou non
            // cas du mage
        if let mage = choosen as? Mage {
            
            // print de son équipe a soigner
            print("select the player you want to heal")
            let healCharacter = player.selectCharacter()
            mage.atkfunction(target: healCharacter)
            
            //switch d'un readline qui va soigner la personne
            }
        
        
            // cas non mage
        
    }
}
    

