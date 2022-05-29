//
// character.swift
// Game
//
//  Created by MiniTitan on 25/05/2022.
//

import Foundation

protocol Character
{
    var name: String {get set}
    var weapon: Int {get set}
    var life: Int {get set}
    
    var isAlive: Bool {get}
}

//
//enum CharacterType{
//    case Colossus
//    case Dwarf
//    case Magus
//    case Warrior
//}
//
//class Character
//{
//    var name: String
//    var type: CharacterType
//    var weapon: Int = 0
//    var life: Int = 0
//    var isAlive: Bool{
//        get{
//            return life > 0
//        }
//    }
//
//    init(name: String, type: CharacterType)
//    {
//        self.name = name
//        self.type = type
//
//        switch type {
//        case .Colossus:
//            self.life = 200
//            self.weapon = 7
//        case .Dwarf:
//            self.life = 75
//            self.weapon = 20
//        case .Magus:
//            self.life = 150
//            self.weapon = 5
//        case .Warrior:
//            self.life = 100
//            self.weapon = 10
//        }
//    }
//
//    func attack(){
//
//    }
//
//    func getDamage(damage: Int)
//    {
//        self.life -= damage
//    }
//
//}
