//
//  colossus.swift
//  Game
//
//  Created by MiniTitan on 25/05/2022.
//

import Foundation

class Colossus : Character
{
    var name: String
    var life: Int
    var weapon: Int
    var isAlive: Bool{
        get{return life > 0 }
    }
    
    init(name:String)
    {
        self.name = name
        self.life = 200
        self.weapon = 8
    }
}
