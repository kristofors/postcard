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
    @IBOutlet weak var sendNameLabel: UILabel!
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
        sendNameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        sendNameLabel.textColor = UIColor.blueColor()
        messageLabel.hidden = false
        sendNameLabel.hidden = false
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        //remove keyboard from window
        enterMessageTextField.resignFirstResponder()
    }

}

