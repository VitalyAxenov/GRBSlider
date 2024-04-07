//
//  ViewController.swift
//  GRBSlider
//
//  Created by Виталий Аксенов on 07.04.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var viewToColor: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    private var redValue: Float = 0.5
    private var greenValue: Float = 0.5
    private var blueValue: Float = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changingViewColorComponent()
        
        redSlider.setValue(redValue, animated: false)
        greenSlider.setValue(greenValue, animated: false)
        blueSlider.setValue(greenValue, animated: false)
        
        redValueLabel.text = String(redValue)
        greenValueLabel.text = String(greenValue)
        blueValueLabel.text = String(blueValue)
    }
    

    @IBAction func redSliding(_ sender: UISlider) {
        redValue = sender.value
        redValueLabel.text = String(
            format: "%.2f",
            sender.value
        )
        changingViewColorComponent()
    }
    
    @IBAction func greenSliding(_ sender: UISlider) {
        greenValue = sender.value
        greenValueLabel.text = String(
            format: "%.2f",
            sender.value
        )
        changingViewColorComponent()
    }
    
    @IBAction func blueSliding(_ sender: UISlider) {
        blueValue = sender.value
        blueValueLabel.text = String(
            format: "%.2f",
            sender.value
        )
        changingViewColorComponent()    }
    
    private func changingViewColorComponent() {
        viewToColor.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )
    }
}

