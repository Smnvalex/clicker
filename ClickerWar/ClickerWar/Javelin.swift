//
//  Javelin.swift
//  ClickerWar
//
//  Created by 90303041 on 1/26/19.
//  Copyright © 2019 90303041. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit


class Javelin {
    
    private var javelinSprite : SKSpriteNode
    
    private var attributedToPlayerOne : Bool
    
    
    init (sprite: String, attributedToPlayerOne: Bool ) {
        
        javelinSprite = SKSpriteNode(imageNamed: sprite)
        
        self.attributedToPlayerOne = attributedToPlayerOne
        
}
    
    func runSequence(env: GameScene)-> [Javelin]{
        env.addChild(javelinSprite)
        
        if attributedToPlayerOne == true {
            javelinSprite.setScale(0.25)
            javelinSprite.zRotation = .pi
            javelinSprite.position = CGPoint(x: 0 , y: 0 + Dimensions().screenHeight / 2.5 )
            
             let javelinThrow = SKAction.moveTo(y:-(Dimensions().screenHeight / 2) , duration: 1 )
            
            let javelinThrowEnd = SKAction.removeFromParent()
            
            
            javelinSprite.run(SKAction.sequence([javelinThrow, javelinThrowEnd, return SKAction.removeJavelin()]))
        }
            
            
        else if attributedToPlayerOne == false {
            javelinSprite.setScale(0.25)
            javelinSprite.position = CGPoint(x: 0 , y: 0 + Dimensions().screenHeight / -2.5 - 50 )
            
            let javelinThrow2 = SKAction.moveTo(y:(Dimensions().screenHeight) / 2 , duration: 1)
            
            let javelinThrowEnd2 = SKAction.removeFromParent()
            
            
            
            javelinSprite.run(SKAction.sequence([javelinThrow2, javelinThrowEnd2]))
            
           
        }
    }
    func getJavelinSprite()-> SKSpriteNode {
        
        return self.javelinSprite
        
    }
    
    func remove(){
        self.javelinSprite.removeAllActions()
        self.javelinSprite.removeFromParent()
        
        
    }
  
    
    
    func equals(_ J: Javelin)-> Bool {
        
        return self.javelinSprite == J.javelinSprite && self.attributedToPlayerOne == J.attributedToPlayerOne
        
    }
    
}

