import Foundation

class Character {
    var name : String
    var lifepoint : Int
    var strenghtAtk : Int
    var weaponequiped : Weapon
    
    init (name : String, lifepoint : Int, strenghtAtk : Int, weaponequiped : Weapon){
        self.name = name
        self.lifepoint = lifepoint
        self.strenghtAtk = strenghtAtk
        self.weaponequiped = weaponequiped
    }

    func atkfunction (target: Character){
        target.lifepoint -= self.strenghtAtk + weaponequiped.stats
    }
    
    // function if the character is dead
    func isUnderZeroLifepoint(player : Player, character : Character) {
        
        if character.lifepoint <= 0 {
            print("\(character.name)")
            var numbercheckinlist = 0
            for _ in player.listOfCharacter {
                if player.listOfCharacter[numbercheckinlist].name == character.name{
                    player.listOfCharacter.remove(at: numbercheckinlist)
                    print("\(character.name) die in the battlefield with honor to defend his people")
                    break
                }
                numbercheckinlist += 1
            }
        }
        
        
    }
    
    
    
}
