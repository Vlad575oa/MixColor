//
//  ViewController.swift
//  MixColor
//
//  Created by user on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewLabel: UIView!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var redSliderLabel: UISlider!
    @IBOutlet weak var greenSliderLabel: UISlider!
    @IBOutlet weak var blueSliderLabel: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderLabel.minimumValue = 0
        redSliderLabel.maximumValue = 1
        redSliderLabel.thumbTintColor = .white
        redSliderLabel.value = 0.5
        redSliderLabel.tintColor = UIColor.red
        redValue.text = "\(redSliderLabel.value)"
    
        greenSliderLabel.minimumValue = 0
        greenSliderLabel.maximumValue = 1
        greenSliderLabel.thumbTintColor = .white
        greenSliderLabel.value = 0.5
        greenSliderLabel.tintColor = UIColor.green
        greenValue.text = "\(greenSliderLabel.value)"
        
        blueSliderLabel.minimumValue = 0
        blueSliderLabel.maximumValue = 1
        blueSliderLabel.thumbTintColor = .white
        blueSliderLabel.value = 0.5
        blueSliderLabel.tintColor = UIColor.blue
        blueValue.text = "\(blueSliderLabel.value)"
    }

    @IBAction func redSliderAction() {
        let roundValue = round(1000 * redSliderLabel.value) / 1000
        redValue.text = "\(roundValue)"
        viewLabel.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: 1)
    }
    @IBAction func greenLabelAction() {
        let roundValue = round(1000 * greenSliderLabel.value) / 1000
        greenValue.text = "\(roundValue)"
        viewLabel.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: 1)
    }
    @IBAction func blueLabelAction() {
        let roundValue = round(1000 * blueSliderLabel.value) / 1000
        blueValue.text = "\(roundValue)"
        viewLabel.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: 1)
    }
    
}

