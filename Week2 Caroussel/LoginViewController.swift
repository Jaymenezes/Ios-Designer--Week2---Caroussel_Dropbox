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
    @IBOutlet weak var login_text: UIImageView!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var signInNavBar: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        // Set initial transform values 20% of original size
        let transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        // Apply the transform properties of the views
        login_text.transform = transform
        fieldParentView.transform = transform
        // Set the alpha properties of the views to transparent
        signInNavBar.transform = transform
        
        signInNavBar.alpha = 0
        login_text.alpha = 0
        fieldParentView.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Animate the code within over 0.3 seconds...
        UIView.animate(withDuration: 0.4) { () -> Void in
            // Return the views transform properties to their default states.
            self.fieldParentView.transform = CGAffineTransform.identity
            self.signInNavBar.transform = CGAffineTransform.identity
            self.login_text.transform = CGAffineTransform.identity

            // Set the alpha properties of the views to fully opaque
            self.fieldParentView.alpha = 1
            self.signInNavBar.alpha = 1
            self.login_text.alpha = 1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.isSelected = false
        
        
        
        
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
                delay(0) {
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
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if loginScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
            print("scroll down called")
        }
        
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController!.popViewController(animated: true)
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
                
                
            })
           
        } else if emailText.text == "jottamenezes01@gmail.com" && passwordText.text == "GreatPassword" {
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
