//
//  ObjectProtocols.swift
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

protocol Attacking {
    
    var damagePoints: Int { get set }
    var range: CGFloat { get set }
    var target: Attackable? { get set }
    
    mutating func dealDamage()
    
}

extension Attacking {
    mutating func dealDamage() {
        target?.tookDamage(damage: damagePoints)
    }
}

protocol Moving {
    
    var speed: CGFloat { get set }
    
    
}








