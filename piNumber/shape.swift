//
//  shape.swift
//  piNumber
//
//  Created by Misha on 4/22/17.
//  Copyright © 2017 SMORE. All rights reserved.
//

import Foundation
import SpriteKit


class myShape : SKShapeNode {
    
    var angle = Double()
    
    override init() {
      super.init()
        self.angle = 36.0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
