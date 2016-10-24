//
//  GetStartedViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/23/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {

    @IBOutlet weak var checkBox1: UIButton!
    @IBOutlet weak var checkBox2: UIButton!
    @IBOutlet weak var checkBox3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)

    }

    @IBAction func didPressCheckbox(_ sender: AnyObject) {
        
        checkBox1.isSelected = !checkBox1.isSelected
    }
    
    
    @IBAction func didPressCheckBox2(_ sender: AnyObject) {
        
        checkBox2.isSelected = !checkBox2.isSelected

        
        
    }
    
    
    @IBAction func didPressCheckBox3(_ sender: AnyObject) {
        
        checkBox3.isSelected = !checkBox3.isSelected

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
