//
//  GameScene.swift
//  CreepGame
//
//  Created by Christopher Boynton on 10/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit


class GameScene: SKScene {
    
    var startPanPosition: CGFloat?
    
    override func didMove(to view: SKView) {
        let panGesture: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panCamera))
        panGesture.minimumNumberOfTouches = 1
        self.view?.addGestureRecognizer(panGesture)
        
        self.camera = self.childNode(withName: "sceneCamera") as? SKCameraNode
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func panCamera(_ sender: UIPanGestureRecognizer) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startPanPosition = touches.first?.location(in: self.view).x
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let moveAmount = startPanPosition! - (touches.first?.location(in: self.view).x)!
        self.camera?.position.x += moveAmount
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        startPanPosition = nil
    }
    
    
    
    
}







