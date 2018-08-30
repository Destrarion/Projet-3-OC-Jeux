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
        }
    }
    
    func attack2(player : Player, ennemyPlayer : Player){
        print("\(player.name), It's your turn to play ")
        // choice of the character select
            let choosen = player.selectCharacter()
    // Chest spawn
            // probability of the spawning chest
        let probability = arc4random_uniform(UInt32(4))
            // if probability is happening, the chest spawn
        if probability == UInt32(1) {
            
            chestSpawn(character: choosen, weaponInTheChest: chest.gettingObjectFromChest(character : choosen))
        }
        // checking if it the selected is a Mage
            // case of the Mage
        if let mage = choosen as? Mage {
            // print de son équipe a soigner
            print("select the player you want to heal")
            let healCharacter = player.selectCharacter()
            mage.atkfunction(target: healCharacter)
            print("\(healCharacter.name) as been healed by \(mage.strenghtAtk) lifepoint from \(mage.name)")
            }
            // if not a Mage
        else{
            print("There's Unwanted ennemy ! Wich enemy you want to kill it first ?")
            // The player choose the ennemy to target
            let ennemytargetted = ennemyPlayer.selectCharacter()
                    //The selected character by the player attack the ennemy
                    choosen.atkfunction(target: ennemytargetted)
                    print("\(String(describing: ennemytargetted.name)) taken \(choosen.strenghtAtk+choosen.weaponequiped.stats) damage and have now \(String(describing: ennemytargetted.lifepoint))")
                    ennemytargetted.isUnderZeroLifepoint(player: ennemyPlayer, character: ennemytargetted)
                    }
            }
    func chestSpawn (character : Character, weaponInTheChest : Weapon){
                
        print("We've found \(weaponInTheChest.name)with \(weaponInTheChest.stats) stats in the chest !")
        print("Did you want to equip to your character ? Actual weapon equiped : \(character.weaponequiped.name) stats : \(character.weaponequiped.stats)")
        if let answer = readLine(){
            switch answer {
            case "yes" : print("choose your character you want to equip this weapon :")
                        character.weaponequiped = weaponInTheChest
                       print("\(character.name) as now equiped \(character.weaponequiped.name)")
                
            case "no" : print("\(weaponInTheChest.name) as been throw away")
                
            default:
                print("Choose one of this 2 case")
                
            }
        }

    }
        
}

    
    

