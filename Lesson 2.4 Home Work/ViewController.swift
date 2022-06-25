//
//  ViewController.swift
//  Lesson 2.4 Home Work
//
//  Created by Psycho on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupColorView()
    }
    
    @IBAction func colorChangeWithSliders() {
        self.colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        
        redValue.text = "\(round(redSlider.value * 100) / 100)"
        greenValue.text = "\(round(greenSlider.value * 100) / 100)"
        blueValue.text = "\(round(blueSlider.value * 100) / 100)"
        
    }
    private func setupColorView() {
        colorView.layer.cornerRadius = 30
        self.colorView.backgroundColor = UIColor(
            red: 0.5,
            green: 0.5,
            blue: 0.5,
            alpha: 1.0
        )
        
    }
}

