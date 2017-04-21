//
//  GameScene.swift
//  piNumber
//
//  Created by Misha on 4/18/17.
//  Copyright © 2017 SMORE. All rights reserved.
//
import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    private var piDrawing = pi()
    private var piLabel = SKLabelNode()
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.black
        piDrawing.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        piDrawing.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi/2), duration: 3)))
        self.addChild(piDrawing)
    
        
        piLabel.text = "THE ART OF π"
        piLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/5  - 20)
        self.addChild(piLabel)
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
