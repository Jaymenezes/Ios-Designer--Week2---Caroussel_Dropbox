//
//  WelcomeViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/21/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeScrollView.contentSize = CGSize(width: 1500, height: 667)
        welcomeScrollView.frame.size = CGSize(width: 375, height: 667)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
