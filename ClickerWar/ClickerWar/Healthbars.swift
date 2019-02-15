//
//  Healthbars.swift
//  ClickerWar
//
//  Created by 90303041 on 2/6/19.
//  Copyright © 2019 90303041. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit


class Healthbars{
    private var healthbar : SKSpriteNode
    private var attributedToPlayerOne : Bool

    
    init (sprite : String, attributedToPlayerOne : Bool) {
        healthbar = SKSpriteNode(imageNamed: sprite)
        self.attributedToPlayerOne = attributedToPlayerOne
    }
}
