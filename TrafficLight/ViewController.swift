//
//  ViewController.swift
//  TrafficLight
//
//  Created by Evgeniy Kostin on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trafficLightRedView: UIView!
    @IBOutlet weak var trafficLightYellowView: UIView!
    @IBOutlet weak var trafficLightGreenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    let dimLight: CGFloat = 0.2
    let fullBrightness: CGFloat = 1.0
    var modes = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
//        trafficLightRedView.layer.cornerRadius = 120
//        trafficLightYellowView.layer.cornerRadius = 120
//        trafficLightGreenView.layer.cornerRadius = 120
        
        startButton.setTitle("START", for: .normal)
    }

    @IBAction func startButtonPressed() {
        switch modes {
        case 0:
            trafficLightRedView.alpha = fullBrightness
            trafficLightYellowView.alpha = dimLight
            trafficLightGreenView.alpha = dimLight
            startButton.setTitle("NEXT", for: .normal)
            modes = 1
        case 1:
            trafficLightYellowView.alpha = fullBrightness
            trafficLightRedView.alpha = dimLight
            modes = 2
        case 2:
            trafficLightYellowView.alpha = dimLight
            trafficLightGreenView.alpha = fullBrightness
            modes = 3
        case 3:
            trafficLightYellowView.alpha = dimLight
            trafficLightGreenView.alpha = dimLight
            startButton.setTitle("START", for: .normal)
            modes = 0
        default:
            break
        }
    }
    
}

