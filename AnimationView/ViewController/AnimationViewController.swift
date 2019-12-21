//
//  ViewController.swift
//  AnimationView
//
//  Created by Станислав on 13.12.2019.
//  Copyright © 2019 Станислав. All rights reserved.
//

import Spring

class AnimationViewController: UIViewController {
    
    let animations = Animation.randomAnimations()
    var currentAnimationIndex = 0
    
    @IBOutlet weak var springButton: SpringButton!

    @IBOutlet weak var springLabel: UILabel!
    @IBOutlet weak var springView: SpringView!
    
    // MARK: - Private properties
    private let primaryColor = UIColor(
        red: 110/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 130/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springView.layer.cornerRadius = 15
            
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        setLabelText()
        
    }
    
    @IBAction func animeButton(_ sender: SpringButton) {
        
     springButton.animation = "pop"
                springButton.curve = "spring"
                springButton.force = 1
                springButton.duration = 1
                springButton.animate()

                springView.animation = animations[currentAnimationIndex].animation
                springView.curve = animations[currentAnimationIndex].curve
                springView.force = animations[currentAnimationIndex].force
                springView.duration = 1
                springView.delay = 0.3
                
                springView.animateNext {
                    if self.currentAnimationIndex == (self.animations.count - 1) {
                        self.currentAnimationIndex = 0
                    } else {
                        self.currentAnimationIndex += 1
                    }
                    self.setLabelText()
                    
                }
                
            }
            
            func setLabelText()  {
                let nextAnimationDescription = """
                NEXT:
                
                Animation: \(animations[currentAnimationIndex].animation)
                Curve: \(animations[currentAnimationIndex].curve)
                Force: \(animations[currentAnimationIndex].force)
                """
                
                springLabel.text = nextAnimationDescription

            }
        }

// MARK: - Set background color
extension AnimationViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}

