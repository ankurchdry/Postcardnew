//
//  ViewController.swift
//  Postcard - New
//
//  Created by ankurchdry on 9/14/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
   
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonSend(sender: UIButton) {
        //Code will Evaluate when button is pressed.
        //Adding a commit
        messageLabel.hidden = false
        messageLabel.text = enterMessageField.text
        enterMessageField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

