//
//  ViewController.swift
//  is it Prime
//
//  Created by Allen Tsai on 2015-07-21.
//  Copyright (c) 2015 Allen Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var numberInput: UITextField!
    @IBAction func primeButton(sender: AnyObject) {
        var number = numberInput.text.toInt()
        
        var isPrime = true
        
        if number == 1 || number == 2 {
            isPrime = false
            resultLabel.text = "\(numberInput.text) is not prime!"
        }
        
        if number != 2 && number != 1{
            for var i = 2; i < number; i++ {
                if number! % i == 0 {
                    isPrime = false
                    resultLabel.text = "\(numberInput.text) is not prime!"
                } else if isPrime == true {
                    resultLabel.text = "\(numberInput.text) is prime!"
            }
            
        }
        }
        
        println(isPrime)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

