//
//  ViewController.swift
//  swift3FormValidator
//
//  Created by admin on 14/05/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var sampleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func buttonAction(_ sender: Any) {
        if (sampleTextField.text?.isValidEmail(testStr: sampleTextField.text!))!{
            print("Validate EmailID")
        }
        else{
            print("invalide EmailID")
        }
        
        if (sampleTextField.text?.isPhoneNumber)!{
            print("Validate EmailID")
        }
        else{
            print("invalide EmailID")
        }

    }

}

