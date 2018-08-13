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
    var gameEnd = false
    
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
    
    func turnPerTurn(player1 : Player, player2 : Player){
        var gameEnd = false
        while gameEnd == false{
            attack2(player: player1, ennemyPlayer: player2)
            if player1.listOfCharacter.count == 0 || player2.listOfCharacter.count == 0 {
                gameEnd = true
                print("Game Over")
                break
            }
            attack2(player: player2, ennemyPlayer: player1)
            if player1.listOfCharacter.count == 0 || player2.listOfCharacter.count == 0 {
                gameEnd = true
                print("Game Over")
                break
            }
        print(player1.listOfCharacter.count , player2.listOfCharacter.count)
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
            print("\(healCharacter.name) as been healed by \(mage.strenghtAtk) lifepoint from \(mage.name)")
            }
            // cas non mage
        else{
            print("There's Unwanted ennemy ! Wich enemy you want to kill it first ?")
            for character in ennemyPlayer.listOfCharacter {
                print("\(character.name), \(character.lifepoint)lifepoint, \(character.strenghtAtk)attack power.")
            }
            // la personne choisis le personnage à cibler
            let ennemytargetted = ennemyPlayer.selectCharacter()
                    //le personnage choisis attaque donc le personnage cibler
                    choosen.atkfunction(target: ennemytargetted)
                    print("\(String(describing: ennemytargetted.name)) taken \(choosen.strenghtAtk) damage and have now \(String(describing: ennemytargetted.lifepoint))")
                    ennemytargetted.isUnderZeroLifepoint(player: ennemyPlayer, character: ennemytargetted)
                    }
                
            }
            
        
}

    
    

