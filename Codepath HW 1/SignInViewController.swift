//
//  SignInViewController.swift
//  Codepath HW 1
//
//  Created by Alvin Hsia on 2/3/16.
//  Copyright © 2016 Alvin Hsia. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {


    @IBOutlet weak var SignInButton: UIButton!

    @IBOutlet weak var pwTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
    }

    @IBAction func welcomeBackButton(sender: AnyObject) {
            navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func cancelButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func didTapOut(sender: AnyObject) {
        view.endEditing(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    @IBAction func pwFieldEndEdit(sender: UITextField) {
        if pwTextField.text!.isEmpty {
            SignInButton.userInteractionEnabled = false
        }
            
        else {
            SignInButton.userInteractionEnabled = true
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
