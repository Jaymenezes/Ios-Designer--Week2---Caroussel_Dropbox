//
//  TermsViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/23/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    @IBOutlet weak var termsWebView: UIWebView!
    @IBOutlet weak var termsLoadIndicator: UIActivityIndicatorView!
    
    let url = "https://www.dropbox.com/terms?mobile=1"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        termsLoadIndicator.startAnimating()
        let requestURL = NSURL(string:url)
        // Place the URL in a URL Request.
        let request = NSURLRequest(url: requestURL! as URL)
        // Load Request into WebView.
        termsWebView.loadRequest(request as URLRequest)
        termsLoadIndicator.stopAnimating()
    
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressDone(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)

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
