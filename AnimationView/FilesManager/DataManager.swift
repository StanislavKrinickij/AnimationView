//
//  DataManager.swift
//  AnimationView
//
//  Created by Станислав on 13.12.2019.
//  Copyright © 2019 Станислав. All rights reserved.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animation: [Spring.AnimationPreset] = [
        .FadeIn,
        .FadeInDown,
        .FadeInLeft,
        .FadeInRight,
        .FadeInUp,
        .FadeOut,
        .FadeOutIn,
        .Fall,
        .Flash,
        .FlipX,
        .FlipY,
        .Morph,
        .Pop,
        .Shake,
        .SlideDown,
        .SlideLeft,
        .SlideRight,
        .SlideUp,
        .Squeeze,
        .SqueezeDown,
        .SqueezeLeft,
        .SqueezeRight,
        .SqueezeUp,
        .Swing,
        .ZoomIn,
        .Wobble,
        .ZoomOut
        ].shuffled()
    
    let curves: [Spring.AnimationCurve] = [
        .EaseIn,
        .EaseInBack,
        .EaseInCirc,
        .EaseInCubic,
        .EaseInExpo,
        .EaseInOut,
        .EaseInOutBack,
        .EaseInOutCirc,
        .EaseInOutCubic,
        .EaseInOutExpo,
        .EaseInOutQuad,
        .EaseInOutQuart,
        .EaseInOutQuint,
        .EaseInOutSine,
        .EaseInQuad,
        .EaseInQuart,
        .EaseInQuint,
        .EaseInSine,
        .EaseOut,
        .EaseOutBack,
        .EaseOutCirc,
        .EaseOutCubic,
        .EaseOutExpo,
        .EaseOutQuad,
        .EaseOutQuart,
        .EaseOutQuint,
        .EaseOutSine
        ].shuffled()
}
