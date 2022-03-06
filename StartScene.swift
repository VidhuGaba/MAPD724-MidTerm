//  StartScene.swift
//  MAPD724-W2022-MidTerm-301210694
//
//  Created by Tom Vidhu Gaba on 2022-01-06.
import SpriteKit
import GameplayKit

class StartScene: SKScene
{
    // Instance Variables
    var ocean: Ocean?
    
    
    override func didMove(to view: SKView)
    {
        screenWidth = frame.width
        screenHeight = frame.height
        
        name = "START"
        
        // add ocean to the scene
        ocean = Ocean() // allocate memory
        //ocean?.position = CGPoint(x: 0, y: 773)
        ocean?.position = CGPoint(x: 773, y: 0)
        ocean?.zRotation = .pi / 2
        addChild(ocean!) // add the ocean to the scene
    }
    
    func touchDown(atPoint pos : CGPoint)
    {
        
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
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
    
    
    override func update(_ currentTime: TimeInterval)
    {
        ocean?.Update()
        
    }
}