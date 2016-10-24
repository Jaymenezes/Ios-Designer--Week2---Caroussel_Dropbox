//
//  SettingsViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/21/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = settingImage.frame.size
        

        // Do any additional setup after loading the view.
    }
    @IBAction func didPressCancel(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressLogOut(_ sender: AnyObject) {
        
//        self.loginIndicator.stopAnimating()
        let alertController = UIAlertController(title: "Are you sure you want to logout?", message: "", preferredStyle: .actionSheet)
        
        self.present(alertController, animated: true) {
            
            // optional code for what happens after the alert controller has finished presenting
        }
        
        let logoutAction = UIAlertAction(title: "Log Out", style: .destructive) { (action) in
           self.performSegue(withIdentifier: "logoutSegue", sender: self)
        }
        alertController.addAction(logoutAction)

        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        alertController.addAction(cancelAction)
        
        
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
