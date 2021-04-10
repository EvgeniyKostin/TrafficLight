//
//  ViewController.swift
//  TrafficLight
//
//  Created by Evgeniy Kostin on 24.03.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var startButton: UIButton!

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!

    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.1

    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.layer.cornerRadius = 10

        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff

        startButton.layer.shadowColor = UIColor.blue.cgColor
        startButton.layer.shadowOpacity = 1
        startButton.layer.shadowOffset = .zero
        startButton.layer.shadowRadius = 5
        
        redLightView.layer.shadowColor = UIColor.red.cgColor
        redLightView.layer.shadowOpacity = 2
        redLightView.layer.shadowOffset = .zero
        redLightView.layer.shadowRadius = 10
        
        yellowLightView.layer.shadowColor = UIColor.yellow.cgColor
        yellowLightView.layer.shadowOpacity = 2
        yellowLightView.layer.shadowOffset = .zero
        yellowLightView.layer.shadowRadius = 10
        
        greenLightView.layer.shadowColor = UIColor.green.cgColor
        greenLightView.layer.shadowOpacity = 2
        greenLightView.layer.shadowOffset = .zero
        greenLightView.layer.shadowRadius = 10
    }

    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }

    private func colorSettings() {
        
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }

        switch currentLight {
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            currentLight = .red
        }
    }
}
