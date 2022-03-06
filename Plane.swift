//  Plane.swift
//  MAPD724-W2022-MidTerm-301210694
//
//  Created by Tom Vidhu Gaba on 2022-01-06.
import GameplayKit
import SpriteKit

class Plane : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        // constrain on the left boundary
        if(position.x <= -525)
        {
            position.x = -525
        }
        
        // constrain on the right boundary
        if(position.x >= 525)
        {
            position.x = 525
        }
    }
    
    // initialization
    override func Start()
    {
        zPosition = 2
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
