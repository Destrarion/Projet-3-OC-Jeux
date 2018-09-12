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
    
    //function to start the game
    func startingGame() {
        print("Hello world!")
        teamCreation()
        teamCreation()
        turnPerTurn(player1: listOfPlayer[0], player2: listOfPlayer[1])
    }
    
    // function to create the team of the player
    func teamCreation(){
       let player = Player()
        player.addNamePlayer()
        player.pickingCharacter()
        listOfPlayer.append(player)
    }
    
    func turnPerTurn(player1 : Player, player2 : Player){
        var gameEnd = false
        // variable for statistic
        var countTurn : Int = 0
        while gameEnd == false{
            attack(player: player1, ennemyPlayer: player2)
            if player1.listOfCharacter.count == 0 || player2.listOfCharacter.count == 0 {
                gameEnd = true
                print("Game Over")
                countTurn += 1
                break
            }
            attack(player: player2, ennemyPlayer: player1)
            if player1.listOfCharacter.count == 0 || player2.listOfCharacter.count == 0 {
                gameEnd = true
                print("Game Over")
                countTurn += 1
                break
            }
            countTurn += 1
        }
        // Announce the winner that won the game
        if gameEnd == true{
            if player1.listOfCharacter.count == 0 {
                print("\(player2.name) as won !")
            }
            if player2.listOfCharacter.count == 0 {
                print("\(player1.name) as won !")
            }
            
            // constant for the calculating statistic of difference of damage between the 2 player
            let damageDoneByPlayer1Float : Float = Float(player1.damageDoneByPlayer)
            let damageDoneByPlayer2Float : Float = Float(player2.damageDoneByPlayer)
            var damageDifferencePercentage: Float = 0
            
            if damageDoneByPlayer1Float < damageDoneByPlayer2Float{
                let damageDifferencePercentageIf1: Float = (damageDoneByPlayer1Float / damageDoneByPlayer2Float) * 100
                damageDifferencePercentage = damageDifferencePercentageIf1
            }else{
                let damageDifferencePercentageIf2: Float = (damageDoneByPlayer2Float / damageDoneByPlayer1Float) * 100
                damageDifferencePercentage = damageDifferencePercentageIf2
            }
            // Constant for the calculating statistic for difference of healing between the 2 player
            let healingDoneByPlayer1Float : Float = Float(player1.healDoneByPlayer)
            let healingDoneByPlayer2Float : Float = Float(player2.healDoneByPlayer)
            var healingDifferencePercentage: Float = 0
            
            if healingDoneByPlayer1Float < healingDoneByPlayer2Float{
                let healingDifferencePercentageIf1: Float = (healingDoneByPlayer1Float / healingDoneByPlayer2Float) * 100
                healingDifferencePercentage = healingDifferencePercentageIf1
            }else{
                let healingDifferencePercentageIf2: Float = (healingDoneByPlayer2Float / healingDoneByPlayer1Float) * 100
                healingDifferencePercentage = healingDifferencePercentageIf2
            }
            
            print("""
                Statistic done in the game :
                Total of turn : \(countTurn)
                Total of chest spawned in the game : \(chest.chestSpawnCount)
                Total of damage done by \(player1.name): \(player1.damageDoneByPlayer)
                Total of damage done by \(player2.name): \(player2.damageDoneByPlayer)
                Difference between damage of both player: \(damageDifferencePercentage)‰
                Total of healing done by \(player1.name): \(player1.healDoneByPlayer)
                Total of healing done by \(player2.name): \(player2.healDoneByPlayer)
                Difference between healing of both player : \(healingDifferencePercentage) %
                """)
        }
    }
    
    func attack(player : Player, ennemyPlayer : Player){
        print("\(player.name), It's your turn to play ")
        // choice of the character select
            let choosen = player.selectCharacter()
        // Chest spawn
            // probability of the spawning chest
        let probability = arc4random_uniform(UInt32(4))
            // if probability is happening, the chest spawn
        if probability == UInt32(1) {
            
            chestSpawn(character: choosen, weaponInTheChest: chest.gettingObjectFromChest(character : choosen))
            chest.chestSpawnCount += 1
        }
        // checking if it the selected is a Mage
            // case of the Mage
        if let mage = choosen as? Mage {
            // print of teh team to heal
            print("select the player you want to heal")
            let healCharacter = player.selectCharacter()
            mage.atkfunction(target: healCharacter)
            player.healDoneByPlayer += choosen.strenghtAtk + choosen.weaponequiped.stats
            print("\(healCharacter.name) as been healed by \(mage.strenghtAtk) lifepoint from \(mage.name)")
            }
            // if not a Mage
        else{
            print("There's Unwanted ennemy ! Wich enemy you want to kill it first ?")
            // The player choose the ennemy to target
            let ennemytargetted = ennemyPlayer.selectCharacter()
                    //The selected character by the player attack the ennemy
                    choosen.atkfunction(target: ennemytargetted)
                    player.damageDoneByPlayer += choosen.strenghtAtk + choosen.weaponequiped.stats
                    print("\(String(describing: ennemytargetted.name)) taken \(choosen.strenghtAtk+choosen.weaponequiped.stats) damage and have now \(String(describing: ennemytargetted.lifepoint))")
                    ennemytargetted.isUnderZeroLifepoint(player: ennemyPlayer, character: ennemytargetted)
                    }
            }
    func chestSpawn (character : Character, weaponInTheChest : Weapon){
        // When the chest spawn, it inform the player if he want to equip the weapon to his selected character
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

    
    

