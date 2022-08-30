//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var bmiBrain = BMI_Brain(weight: 0, height: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiBrain.initializeHeight(Float(heightLabel.text!.dropLast())!)
        bmiBrain.initializeWeight(Float(weightLabel.text!.dropLast(2))!)
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
        bmiBrain.initializeHeight(sender.value)
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
        bmiBrain.initializeWeight(sender.value)
    }
    
    @IBAction func calculateRequested(_ sender: UIButton) {
        let secondPage = ResultViewController()
        self.present(secondPage,animated: true, completion: nil)
    }
    
}

