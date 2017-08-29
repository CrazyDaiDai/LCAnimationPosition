//
//  ViewController.swift
//  LCAnimationPosition
//
//  Created by 呆仔～林枫 on 2017/8/29.
//  Copyright © 2017年 Lin_Crazy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let screen_w = UIScreen.main.bounds.width
    let screen_h = UIScreen.main.bounds.height
    let layerW : CGFloat = 200
    let layerH : CGFloat = 150
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(layer)
    }

    lazy var layer : CALayer = {
    
        let layer = CALayer()
        layer.bounds = CGRect.init(x: 0.0, y: 0.0, width: self.layerW, height: self.layerH)
        layer.position = self.view.center
        layer.backgroundColor = UIColor.orange.cgColor
        self.view.layer.addSublayer(layer)

        return layer
    }()
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let animation = CABasicAnimation.init(keyPath: "position")
        animation.toValue = CGRect.init(x: 110, y: 100, width: layerW, height: layerH)
        animation.duration = 1.5
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        animation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear)
        layer.add(animation, forKey: "linear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

