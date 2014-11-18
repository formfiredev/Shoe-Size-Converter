//
//  ViewController.swift
//  Shoe Size Converter
//
//  Created by Amy Holms on 11/17/14.
//  Copyright (c) 2014 FormFire Develops. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSIzeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        //take input from text field make it a constant
//        let sizeFromTextField = mensShoeSIzeTextField.text
//        //convert string to Int optional
//        let numberFromTextField = sizeFromTextField.toInt()
//        //unwrap optional - make an integer
//        var integerFromTextField = numberFromTextField!
        
        let sizeFromTextField = mensShoeSIzeTextField.text.toInt()!
        
        
        //set conversion factor
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Size"
        
        //add conversion factor to input integer
//        integerFromTextField += conversionConstant
        //unhide label

        //convert integer to string
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        //update label
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        mensShoeSIzeTextField.resignFirstResponder()
        mensShoeSIzeTextField.text = ""
    }
    
    @IBAction func convertWomensButtonPressed(sender: UIButton) {
        let sizeFromWomensTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let womensConversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromWomensTextField + womensConversionConstant)" + " in European Size"

        womensShoeSizeTextField.resignFirstResponder()
        womensShoeSizeTextField.text = ""
        
    }
    

}

