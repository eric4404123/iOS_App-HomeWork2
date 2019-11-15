//
//  ViewController.swift
//  HomeWork2
//
//  Created by Chi Hung Liu on 2019/11/14.
//  Copyright © 2019 Chi Hung Liu. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var watchCount1: UILabel!
    @IBOutlet weak var watchCount2: UILabel!
    @IBOutlet weak var watchCount3: UILabel!
    @IBOutlet weak var watchCount4: UILabel!
    @IBOutlet weak var watchCount5: UILabel!
    @IBOutlet weak var finalPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    var watch1CountStep: Int = 0
    var watch2CountStep: Int = 0
    var watch3CountStep: Int = 0
    var watch4CountStep: Int = 0
    var watch5CountStep: Int = 0
    
    let watch1Price = 4894005
    let watch2Price = 2538157
    let watch3Price = 35730212
    let watch4Price = 1985454
    let watch5Price = 354999

    
    @IBAction func watchSteeper1(_ sender: UIStepper) {
        watch1CountStep = Int(sender.value)
        watchCount1.text = "\(watch1CountStep)"
        totalPrice()
    }
    
    @IBAction func watchSteeper2(_ sender: UIStepper) {
        watch2CountStep = Int(sender.value)
        watchCount2.text = "\(watch2CountStep)"
        totalPrice()
    }
    
    @IBAction func watchSteeper3(_ sender: UIStepper) {
        watch3CountStep = Int(sender.value)
        watchCount3.text = "\(watch3CountStep)"
        totalPrice()
    }
    
    @IBAction func watchSteepe4(_ sender: UIStepper) {
        watch4CountStep = Int(sender.value)
        watchCount4.text = "\(watch4CountStep)"
        totalPrice()
    }
    
    @IBAction func watchSteeper5(_ sender: UIStepper) {
        watch5CountStep = Int(sender.value)
        watchCount5.text = "\(watch5CountStep)"
        totalPrice()
    }
    
    func totalPrice(){
        let price1 = watch1CountStep * watch1Price
        let price2 = watch2CountStep * watch2Price
        let price3 = watch3CountStep * watch3Price
        let price4 = watch4CountStep * watch4Price
        let price5 = watch5CountStep * watch5Price
        
        let totalNumber = price1 + price2 + price3 + price4 + price5
        
        let formatter = NumberFormatter()
        
        formatter.numberStyle = .currency
        
        finalPrice.text = formatter.string(from: NSNumber (value: totalNumber))?.description
    }
}

