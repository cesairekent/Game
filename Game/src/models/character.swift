//
//  character.swift
//  Game
//
//  Created by MiniTitan on 25/05/2022.
//

import Foundation

class Character
{
    var name: String
    var weapon: Int = 0
    var life: Int = 0
    var isAlive: Bool{
        get{
            return life > 0
        }
    }
    
    init(name: String, weapon: Int, life: Int)
    {
        self.name = name
        self.weapon = weapon
        self.life = life
    }
}
