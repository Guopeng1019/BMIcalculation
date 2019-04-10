//
//  ViewController.swift
//  BMIcalculation
//
//  Created by lucky on 2019/3/7.
//  Copyright © 2019 lucky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
    
    
  
    
    @IBOutlet weak var displayer: UILabel!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    var height: Double?
    var weight: Double?
    
    @IBAction func caucalation(_ sender: UIButton) {
        height = Double(heightInput.text!)
        weight = Double(weightInput.text!)
        guard let height = height else {
            displayer.text = "身高输入错误"
            return
        }
        guard let weight = weight else {
            displayer.text = "体重输入错误"
            return
        }
        displayer.text = BMICaucalation(height: height, weight: weight)
        
    }
  
    
    func BMICaucalation(height: Double,weight: Double) -> String {
        let BMI = weight / (height * height)
        let textBMI = String(format: "%2.f", BMI)
        switch BMI {
        case 0.0..<18.5:
            return "您的BMI指数为\(textBMI),体重过轻"
        case 18.5..<24.0:
            return "您的BMI指数为\(textBMI),体重正常"
        case 24.0..<28.0:
            return "您的BMI指数为\(textBMI),体重过重"
        case 28.0...:
            return "您的BMI指数为\(textBMI),体重超重"
        default:
            return "输入错误"
        }
    }
}

