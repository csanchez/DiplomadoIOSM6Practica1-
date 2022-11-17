//
//  ViewController.swift
//  Animations
//
//  Created by Tecnologias iis on 17/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet var segmentedControl: UISegmentedControl!
    
    var animation: LoaderView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       /* let segmentedControl = UISegmentedControl (items: ["Pez","Loading","Regalo"])

                segmentedControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)

                segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment

                self.view.addSubview(segmentedControl)*/
        animation = LoaderView()
        animation?.frame.size = CGSize(width: 400, height: 400)
        animation?.center = self.view.center
        view.addSubview(animation!)
        view.backgroundColor = .cyan
    }

    @IBAction func animationSelected(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
            {
            case 0:
                animation?.changeAnimation(animation: "fish")
            case 1:
                animation?.changeAnimation(animation: "gift")
            case 2:
                animation?.changeAnimation(animation: "loading")
            default:
                break
            }
    }
    
}

