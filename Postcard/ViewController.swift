//
//  ViewController.swift
//  Postcard
//
//  Created by Kristofor on 27/02/2015.
//  Copyright (c) 2015 Kristofor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Send Mail button is pressed
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel.hidden = false
        enterMessageTextField.text = ""
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        //remove keyboard from window
        enterMessageTextField.resignFirstResponder()
    }

}

