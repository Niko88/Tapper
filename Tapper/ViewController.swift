//
//  ViewController.swift
//  Tapper
//
//  Created by Nicholas Esposito on 15/10/2015.
//  Copyright © 2015 Nicholas Esposito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var logoImg: UIImageView!
    @IBOutlet var inputField: UITextField!
    @IBOutlet var tapsLabel: UILabel!
    @IBOutlet var tapButton: UIButton!
    @IBOutlet var playButton: UIButton!
    var taps = 0
    var currentaps = 0
    
    @IBAction func tapButton(sender: AnyObject)
    {
        if inputField.text != "" && inputField.text != nil
        {
        taps = Int(inputField.text!)!
        logoImg.hidden = true
        inputField.hidden = true
        playButton.hidden = true
        tapButton.hidden = false
        updateLabel()
        tapsLabel.hidden = false
        }
        else
        {
            let alertController = UIAlertController(title: "Empty taps!", message: "Please specift the number of taps", preferredStyle: .Alert)
            //We add buttons to the alert controller by creating UIAlertActions:
            let actionOk = UIAlertAction(title: "OK",
                style: .Default,
                handler: nil) //You can use a block here to handle a press on this button
            
            alertController.addAction(actionOk)
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
    }
    //@IBOutlet var gameButton: UIButton!
    
    @IBAction func gameStart(sender: AnyObject)
    {
        currentaps++;
        if (currentaps == taps)
        {
            logoImg.hidden = false
            inputField.text = ""
            inputField.hidden = false
            playButton.hidden = false
            tapButton.hidden = true
            tapsLabel.hidden = true
            taps = 0
            currentaps = 0
        }
        else
        {
            updateLabel()
        }

        
    }
    
    func updateLabel()
    {
        tapsLabel.text = "\(currentaps) taps"
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

