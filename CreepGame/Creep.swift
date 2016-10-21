//
//  Creep.swift
//  CreepGame
//
//  Created by Christopher Boynton on 10/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

enum CreepType {
    case balanced
    case attack
    case tank
    case ranged
    case mage
}

class Creep: Attacking, Attackable, Moving {
    
    var creepType: CreepType
    var rank: Int
    
    var healthPoints: Int = 0
    var armorPoints: Int = 0
    
    var damagePoints: Int = 0
    var range: CGFloat = 0
    var target: Attackable?
    
    var speed: CGFloat = 0
    
    init(creepType: CreepType, rank: Int) {
        self.creepType = creepType
        self.rank = rank
        
        //TODO: - Initialzier switch statement to set values for stats
    }
}
