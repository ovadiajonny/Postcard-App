//
//  ViewController.swift
//  Postcard
//
//  Created by Jonathan Ovadia on 2015/01/27.
//  Copyright (c) 2015 Jonathan Ovadia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        var height: Int = 10
        for (var i: Int = 1; i<height; i++) {
            textView.text = textView.text +   "|"+spaces(i,rows: height) + multiplyString(String(i), count: i) + spaces(i,rows: height) + "| \n"
        
            
        }
        messageTextField.resignFirstResponder()
      messageLabel.text = messageTextField.text
        
        messageLabel.textColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
        
    }
    
    func spaces(row: Int,rows: Int) -> String{
       var spaces: Int = rows-row
        
        return multiplyString(" ", count: spaces)
    }
    
    func multiplyString (s: String, count: Int) -> String{
    var newString = ""
        
        for (var i:Int = 0; i < count;i++){
            newString = newString + s
        }
        return newString
    }

}
 