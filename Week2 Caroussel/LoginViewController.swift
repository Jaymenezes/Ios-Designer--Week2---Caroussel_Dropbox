//
//  LoginViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/21/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        loginScrollView.delegate = self
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        delay(0.5) {
            NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
                let frame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
                
                
                self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
                self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.bottom
                
                
                
            }
        }
        
        delay(0.5) {
            NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
                delay(0.25) {
                    self.buttonParentView.frame.origin.y = self.buttonInitialY - self.buttonOffset
                    self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.bottom
                    
                }
            }
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressLogin(_ sender: AnyObject) {
        
        loginIndicator.startAnimating()
        loginButton.isSelected = true
        
        if emailText.text!.isEmpty == true && passwordText.text!.isEmpty == true {
            delay(0.4, closure: { () -> () in
                self.loginIndicator.stopAnimating()
                let alertController = UIAlertController(title: "Email required", message: "Please enter data", preferredStyle: .alert)
                
                self.present(alertController, animated: true) {
                    
                    // optional code for what happens after the alert controller has finished presenting
                }
                
                let cancelAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
                }
                alertController.addAction(cancelAction)
                
                
                print("field empty true")
                
                
      
        } else if emailText.text == "Codepath" && passwordText.text == "Awesome" {
            delay(2, closure: { () -> () in
                
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                self.loginIndicator.stopAnimating()
                
            })
        } else {
            delay(2, closure: { () -> () in
                self.loginIndicator.stopAnimating()
                let alertController = UIAlertController(title: "Invalid email/password", message: "Please try again", preferredStyle: .alert)
                
                let cancelAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
                    
                }
                alertController.addAction(cancelAction)
                
                self.present(alertController, animated: true) {
                    
                    // optional code for what happens after the alert controller has finished presenting
                }
            })
            
        }
        
        
        
        
        
        
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
