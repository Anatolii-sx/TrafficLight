//
//  ViewController.swift
//  TrafficLight
//
//  Created by Анатолий Миронов on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lights: [UIView]!
    @IBOutlet var turnLightButton: UIButton!
    
    var numberOfLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        turnLightButton.layer.cornerRadius = 10
        
        lights.forEach {$0.layer.cornerRadius = $0.frame.size.width / 2}
    }

    @IBAction func turnLightButtonPassed(_ sender: UIButton) {
        turnLightButton.setTitle("NEXT", for: .normal)
        
        lights.forEach{$0.alpha = 0.3}

        lights[numberOfLight].alpha = 1

        if numberOfLight < lights.count - 1 {
            numberOfLight += 1
        } else {
            numberOfLight = 0
        }
    }
}

