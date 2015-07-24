//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by James Hicks on 6/4/15.
//  Copyright (c) 2015 zorch!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var humanYears: UITextField!
  @IBOutlet weak var dogYears: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func convertToDogYears(sender: UIButton) {
    let humanToDogYearsMultiplier = 7
    
    humanYears.resignFirstResponder()
    let humanAge = humanYears.text.toInt()!
    humanYears.text = ""

    dogYears.text = "\(humanAge) human years is \(humanAge * 7) in dog years."
    dogYears.hidden = false
  }
  
  @IBAction func convertToRealDogYears(sender: UIButton) {
    let youngerDogMultiplier = 10.5
    let olderDogMultiplier = 4.0
    let dogAgeCutoff = 2.0
    var dogAge:Double
    
    humanYears.resignFirstResponder()
    let humanAge = Double(humanYears.text.toInt()!)
    humanYears.text = ""
    
    if humanAge <= dogAgeCutoff {
      dogAge = humanAge * youngerDogMultiplier
    } else {
      dogAge = (humanAge - dogAgeCutoff) * olderDogMultiplier + dogAgeCutoff * youngerDogMultiplier
    }
    
    dogYears.text = "\(humanAge) human years is \(dogAge) in dog years."
    dogYears.hidden = false
  }
}

