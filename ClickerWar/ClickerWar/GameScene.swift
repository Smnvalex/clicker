//
//  GameScene.swift
//  ClickerWar
//
//  Created by 90303041 on 1/26/19.
//  Copyright © 2019 90303041. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    
    var graphs = [String : GKGraph]()
    
    var javelinList = [Javelin]()

 
   
    override func sceneDidLoad() {
        
        

    }
    override func didMove(to view: SKView) {
 

    }
    
    
    func touchDown(atPoint pos : CGPoint) {
     
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
     
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            
            
            let position = touch.location(in: self)
            
                    if position.y <= 0 {
                
                        javelinList.append(Javelin(sprite: "JavelinSprite", attributedToPlayerOne: false ))
                        
                        javelinList[javelinList.count - 1].runSequence(env: self)
                        
                    }
                    else{
                        
                        javelinList.append(Javelin(sprite: "JavelinSprite", attributedToPlayerOne: true ))
                        
                        javelinList[javelinList.count - 1].runSequence(env: self)
                        
            }

        }
    }
    
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            _ = touch.location(in: self)
            
            
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    
    override func update(_ currentTime: TimeInterval) {
       
        
        print(javelinList)
        
if javelinList.count > 0 {
    for _ in javelinList{
              var indexNumber = 0
            
            var indexNumber2 = 0
            
            for _ in javelinList{
//                print("======================")
//               print(firstJavelin.getJavelinSprite().contains(secondJavelin.getJavelinSprite()))
//
//                print(firstJavelin !== secondJavelin)
//
//                print(firstJavelin.getJavelinSprite().position.y < Dimensions().screenHeight / 2)
//
//
//                print(firstJavelin.getJavelinSprite().position.y > -(Dimensions().screenHeight / 2))
//                print("======================")
                if (indexNumber != indexNumber2) && javelinList[indexNumber2].getJavelinSprite().position.y == javelinList[indexNumber].getJavelinSprite().position.y {
                    
                    print("fuck")
                   
                    javelinList[indexNumber].getJavelinSprite().removeFromParent()
                    javelinList[indexNumber2 - 1].getJavelinSprite().removeFromParent()
                    
                    javelinList.remove(at: indexNumber)
                    javelinList.remove(at: indexNumber2 - 1)
                    

                
                }
                indexNumber2 += 1
            }
          indexNumber += 1
        }
        
    }
    }
    
    
    
}

extension SKAction {
    
    func removeJavelin(List: [Javelin], Javelin: Javelin)-> [Javelin]{
        
        var index = 0
        
        var jList = [Javelin]
        
        for j in List {
            
            if j.equals(Javelin) {
             
                
            }
            jList.append(j)
            index += 1
        }
        
        return jList
    }
    
}
