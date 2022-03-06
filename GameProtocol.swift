//  GameProtocol.swift
//  MAPD724-W2022-MidTerm-301210694
//
//  Created by Tom Vidhu Gaba on 2022-01-06.
protocol GameProtocol
{
    // prevent an object from leaving the screen or detect that it has done so
    func CheckBounds()
    
    // Reset our GameObject offscreen
    func Reset()
    
    // Initialize properties of our Game Objects
    func Start()
    
    // Update will be called every Frame (60 times per second) = 16.666ms
    func Update()
}
