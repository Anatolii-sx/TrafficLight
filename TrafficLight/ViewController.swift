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
    
    private var numberOfLight = 0
    
    override func viewWillLayoutSubviews() {
        lights.forEach {$0.layer.cornerRadius = $0.frame.width / 2}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        turnLightButton.layer.cornerRadius = 10
    }

    @IBAction func turnLightButtonPassed() {
        if turnLightButton.currentTitle == "START" {
            turnLightButton.setTitle("NEXT", for: .normal)
        }
        
        lights.forEach{$0.alpha = 0.3}

        lights[numberOfLight].alpha = 1

        if numberOfLight < lights.count - 1 {
            numberOfLight += 1
        } else {
            numberOfLight = 0
        }
    }
}

