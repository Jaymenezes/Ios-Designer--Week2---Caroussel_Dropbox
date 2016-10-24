//
//  WelcomeViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/21/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var carousselButton: UIButton!
    @IBOutlet weak var welcomePageControl: UIPageControl!
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeScrollView.delegate = self
        
        carousselButton.alpha = 0
        welcomeScrollView.contentSize = CGSize(width: 1500, height: 667)
        welcomeScrollView.frame.size = CGSize(width: 375, height: 667)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page: Int = Int(round(scrollView.contentOffset.x / 375))
        welcomePageControl.currentPage = page
        
        if page == 3 {
            welcomePageControl.isHidden = true
            UIView.animate(withDuration: 0.7, animations: {
            self.carousselButton.alpha = 1
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
