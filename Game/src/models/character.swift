//
// character.swift
// Game
//
//  Created by MiniTitan on 25/05/2022.
//

import Foundation

protocol Character : AnyObject
{
    var name: String {get set}
    var weapon: Int {get set}
    var life: Int {get set}
    
    var isAlive: Bool {get}
    
    func getDamage(damage: Int)
    
    func getHeal(heal: Int)
}

extension Character
{
    func getDamage(damage: Int)
    {
        self.life -= damage
    }
    
    func getHeal(heal: Int)
    {
        self.life += heal
    }
}


