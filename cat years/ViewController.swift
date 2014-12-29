//
//  ViewController.swift
//  cat years
//
//  Created by Gonçalo Henriques on 19/12/14.
//  Copyright (c) 2014 Mobigeek Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catYearsInput: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateCatYears(sender: AnyObject) {
        let catYears = catYearsInput.text.toInt();
        if  ((catYears) != nil) {
            var newCatYears = catYears! * 7
            answer.text = "Your cat is \(newCatYears) human years"
        }
        else {
            answer.text = "Please enter a value"
            catYearsInput.becomeFirstResponder()
        }
    }

}

