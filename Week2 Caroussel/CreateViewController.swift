//
//  CreateViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/23/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate {

    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var introCreateText: UIImageView!
    
    @IBOutlet weak var createNavBar: UIImageView!
    @IBOutlet weak var fieldParentView: UIView!
    
    @IBOutlet weak var termsButton: UIButton!
    
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var createScrollView: UIScrollView!
    
    override func viewWillAppear(_ animated: Bool) {
        // Set initial transform values 20% of original size
        let transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        // Apply the transform properties of the views
        introCreateText.transform = transform
        fieldParentView.transform = transform
        // Set the alpha properties of the views to transparent
        createNavBar.transform = transform
        
        createNavBar.alpha = 0
        introCreateText.alpha = 0
        fieldParentView.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Animate the code within over 0.3 seconds...
        UIView.animate(withDuration: 0.4) { () -> Void in
            // Return the views transform properties to their default states.
            self.fieldParentView.transform = CGAffineTransform.identity
            self.createNavBar.transform = CGAffineTransform.identity
            self.introCreateText.transform = CGAffineTransform.identity
            
            // Set the alpha properties of the views to fully opaque
            self.fieldParentView.alpha = 1
            self.createNavBar.alpha = 1
            self.introCreateText.alpha = 1
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createScrollView.delegate = self

        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        createScrollView.contentSize = createScrollView.frame.size
        createScrollView.contentInset.bottom = 100
        
        delay(0.5) {
            NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
                let frame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
                
                
                self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
                self.createScrollView.contentOffset.y = self.createScrollView.contentInset.bottom
                
                
                
            }
        }
        
        delay(0.5) {
            NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
                delay(0) {
                    self.buttonParentView.frame.origin.y = self.buttonInitialY - self.buttonOffset
                    
                    
                    self.createScrollView.contentOffset.y = self.createScrollView.contentInset.bottom
                    
                }
            }
            
        }

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if createScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
            print("scroll down called")
        }
        
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        
        navigationController?.popViewController(animated: true)

    }

    @IBAction func didPressCheckbox(_ sender: AnyObject) {
        
        termsButton.isSelected = !termsButton.isSelected

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
