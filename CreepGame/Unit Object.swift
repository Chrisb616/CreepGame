//
//  Unit Object.swift
//  CreepGame
//
//  Created by Benjamin Su on 10/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit



protocol Attackable {
    var healthPoints: Int { get set }
    var armorPoints: Int { get set }
    
    
    mutating func tookDamage(damage: Int)
    
}

extension Attackable {
    
    mutating func tookDamage(damage: Int) {
        healthPoints -= damage
    }
    
}

protocol Attacker {
    
    var damagePoints: Int { get set }
    var range: CGFloat { get set }
    var target: Attackable? { get set }
    
    mutating func dealDamage()
    
}

extension Attacker {
    mutating func dealDamage() {
        target?.tookDamage(damage: damagePoints)
    }
}

protocol Mover {
    
    var speed: CGFloat { get set }
    
    
}

protocol Unit: Attacker, Attackable, Mover {
    
}



struct Pikeman: Unit {
    
    var healthPoints: Int = 10
    var armorPoints: Int = 1
    var damagePoints: Int = 3
    var range: CGFloat = 2
    var target: Attackable?
    var speed: CGFloat = 40
    
    
}








