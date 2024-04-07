//
//  ViewController.swift
//  GRBSlider
//
//  Created by Виталий Аксенов on 07.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewToColor: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    var redValue: Float = 0.0
    var greenValue: Float = 0.0
    var blueValue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func redSliding(_ sender: UISlider) {
        redValue = sender.value
        redValueLabel.text = String(format: "%.2f", sender.value)
        changingViewColorComponent()
    }
    
    @IBAction func greenSliding(_ sender: UISlider) {
        greenValue = sender.value
        greenValueLabel.text = String(format: "%.2f", sender.value)
        changingViewColorComponent()
    }
    
    @IBAction func blueSliding(_ sender: UISlider) {
        blueValue = sender.value
        blueValueLabel.text = String(format: "%.2f", sender.value)
        changingViewColorComponent()
    }
    
    func changingViewColorComponent() {
        viewToColor.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )
    }

}

