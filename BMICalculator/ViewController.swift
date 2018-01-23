//
//  ViewController.swift
//  BMICalculator
//
//  Created by Jirayut's Macbook on 23/1/2561 BE.
//  Copyright © 2561 Jirayut_TG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculate(_ sender: UIButton) {
        let bmi = BMICalculator(height: Double(heightInput.text!)!,weight: Double(weightInput.text!)!)

        let result = bmi.cal()
        change(bmiVal: result)
    }
    
    func change(bmiVal:Double){
        resultLabel.text = String(format:"%.2f", bmiVal)
        if(bmiVal < 18.5){
            statusLabel.text = "UNDERWEIGHT"
            img.image = UIImage(named: "under.jpg")
            statusLabel.backgroundColor = UIColor(red: 0.54, green: 0.86, blue: 0.97, alpha: 1)
        } else if (bmiVal >= 18.5 && bmiVal < 23){
            statusLabel.text = "HEALTHY RANGE"
            img.image = UIImage(named: "health.jpg")
            statusLabel.backgroundColor = UIColor(red: 0.46, green: 0.76, blue: 0.52, alpha: 1)
        } else if (bmiVal >= 23 && bmiVal < 27.5){
            statusLabel.text = "OVER WEIGHT"
            img.image = UIImage(named: "over.jpg")
            statusLabel.backgroundColor = UIColor(red: 0.97, green: 0.87, blue: 0.4, alpha: 1)
        } else {
            statusLabel.text = "OBESE"
            img.image = UIImage(named: "obese.jpg")
            statusLabel.backgroundColor = UIColor(red: 0.91, green: 0.44, blue: 0.35, alpha: 1)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

