//
//  BMICalculator.swift
//  BMICalculator
//
//  Created by Jirayut's Macbook on 23/1/2561 BE.
//  Copyright © 2561 Jirayut_TG. All rights reserved.
//

import Foundation

class BMICalculator {
    var height:Double
    var weight:Double
    
    init ( height:Double, weight:Double){
        self.height = height
        self.weight = weight
    }
    
    func cal()-> Double{
        return weight/(height/100*height/100)
    }
}
