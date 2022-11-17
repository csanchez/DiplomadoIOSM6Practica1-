//
//  LoaderView.swift
//  Animations
//
//  Created by Tecnologias iis on 17/11/22.
//

import Foundation
import UIKit
import Lottie

public class LoaderView: UIView{
    let animationView =  LottieAnimationView(name: "fish")
    
    override init(frame: CGRect){
        super.init(frame:frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit(){
        
        animationView.frame = CGRect(x:0,y:0,width: 400,height: 400)
        animationView.center = self.center
        animationView.animationSpeed = 1
        animationView.contentMode = .scaleAspectFill
        self.addSubview(animationView)
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 280).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 108).isActive = true
    }
    
    func changeAnimation(animation: String){
        animationView.stop()
        animationView.animation = LottieAnimation.named(animation)
        animationView.play()
        
    }
    
    
}
