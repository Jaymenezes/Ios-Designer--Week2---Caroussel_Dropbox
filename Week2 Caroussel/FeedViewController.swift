//
//  FeedViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/21/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var dismissBanner: UIButton!
    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var feedScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerImage.isHidden = false
        dismissBanner.isHidden = false
        feedScrollView.contentSize = feedImage.frame.size
//        feedScrollView.frame.size = CGSize(width: 375, height: 667)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didDismissBanner(_ sender: AnyObject) {
        bannerImage.isHidden = true
        dismissBanner.isHidden = true
   
        
       delay(0.1) {
        self.feedScrollView.transform = CGAffineTransform(translationX: 0, y: -40)
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
