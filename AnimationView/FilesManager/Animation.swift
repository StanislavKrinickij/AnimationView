//
//  Animation.swift
//  AnimationView
//
//  Created by Станислав on 21.12.2019.
//  Copyright © 2019 Станислав. All rights reserved.
//

import UIKit

struct Animation {
    
    var animation: String
    var curve : String
    var force : CGFloat
    
    static func randomAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let animationPreset = DataManager.shared.animation

        for animation in animationPreset {
            guard let randomCurve = DataManager.shared.curves.randomElement() else { return [] }
            let randomForceNum = CGFloat(Int.random(in: 1...4))

            animations.append(
                Animation(
                    animation: animation.rawValue,
                    curve: randomCurve.rawValue,
                    force: randomForceNum
                )
            )
        }
        
        return animations
    }
    
}
