//
//  IntroViewController.swift
//  Week2 Caroussel
//
//  Created by user on 10/21/16.
//  Copyright © 2016 Jean. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile4: UIImageView!
    
    @IBOutlet weak var introTIle5: UIImageView!
    
    @IBOutlet weak var introTile6: UIImageView!
    
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introScrollView.delegate = self
        introScrollView.contentSize = introImage.frame.size
        
        var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
        var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
        var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
        var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        let offSet = Float(scrollView.contentOffset.y)
        
//        Tile 1 transform
        
        let tx = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -30, r2Max: 0)
        let ty = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -285, r2Max: 0)
        
        let scale = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 1, r2Max: 1)
        let rotation = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -10, r2Max: 0)
        
        
        introTile1.transform = CGAffineTransform(translationX: tx, y: ty)
        introTile1.transform = CGAffineTransform(rotationAngle: (CGFloat(Double(rotation) * M_PI / 180)))
        
        // Reset the transform and apply a translation
        introTile1.transform = CGAffineTransform(translationX: tx, y: ty)
        // Add rotation to the transform
        introTile1.transform = introTile1.transform.rotated(by: CGFloat(M_PI / 180) * rotation)
        // Add scale to the transform
        introTile1.transform = introTile1.transform.scaledBy(x: scale, y: scale)
        
        
        //        Tile 2 transform
        
        let txTile2 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 75, r2Max: 0)
        let tyTile2 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -240, r2Max: 0)
        let rotationTile2 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -10, r2Max: 0)
        let scaleTile2 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 1.65, r2Max: 1)
        
        
        introTile2.transform = CGAffineTransform(translationX: txTile2, y: tyTile2)
        introTile2.transform = CGAffineTransform(rotationAngle: (CGFloat(Double(rotationTile2) * M_PI / 180)))
        
        // Reset the transform and apply a translation
        introTile2.transform = CGAffineTransform(translationX: txTile2, y: tyTile2)
        // Add rotation to the transform
        introTile2.transform = introTile2.transform.rotated(by: CGFloat(M_PI / 180) * rotationTile2)
        // Add scale to the transform
        introTile2.transform = introTile2.transform.scaledBy(x: scaleTile2, y: scaleTile2)
        
        
        //        Tile 3 transform
        
        let txTile3 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -66, r2Max: 0)
        let tyTile3 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -415, r2Max: 0)
        let rotationTile3 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 10, r2Max: 0)
        let scaleTile3 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 1.7, r2Max: 1)
        
        
        introTile3.transform = CGAffineTransform(translationX: txTile3, y: tyTile3)
        introTile3.transform = CGAffineTransform(rotationAngle: (CGFloat(Double(rotationTile3) * M_PI / 180)))
        
        // Reset the transform and apply a translation
        introTile3.transform = CGAffineTransform(translationX: txTile3, y: tyTile3)
        // Add rotation to the transform
        introTile3.transform = introTile3.transform.rotated(by: CGFloat(M_PI / 180) * rotationTile3)
        // Add scale to the transform
        introTile3.transform = introTile3.transform.scaledBy(x: scaleTile3, y: scaleTile3)
        
        
        
        //        Tile 4 transform
        
        let txTile4 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -15, r2Max: 0)
        let tyTile4 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -500, r2Max: 0)
        let rotationTile4 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 10, r2Max: 0)
        let scaleTile4 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 1.6, r2Max: 1)
        
        
        introTile4.transform = CGAffineTransform(translationX: txTile4, y: tyTile4)
        introTile4.transform = CGAffineTransform(rotationAngle: (CGFloat(Double(rotationTile4) * M_PI / 180)))
        
        // Reset the transform and apply a translation
        introTile4.transform = CGAffineTransform(translationX: txTile4, y: tyTile4)
        // Add rotation to the transform
        introTile4.transform = introTile4.transform.rotated(by: CGFloat(M_PI / 180) * rotationTile4)
        // Add scale to the transform
        introTile4.transform = introTile4.transform.scaledBy(x: scaleTile4, y: scaleTile4)
        
        
        //        Tile 5 transform
        
        let txTile5 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -200, r2Max: 0)
        let tyTile5 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -480, r2Max: 0)
        let rotationTile5 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 10, r2Max: 0)
        let scaleTile5 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 1.65, r2Max: 1)
        
        
        introTIle5.transform = CGAffineTransform(translationX: txTile5, y: tyTile5)
        introTIle5.transform = CGAffineTransform(rotationAngle: (CGFloat(Double(rotationTile5) * M_PI / 180)))
        
        // Reset the transform and apply a translation
        introTIle5.transform = CGAffineTransform(translationX: txTile5, y: tyTile5)
        // Add rotation to the transform
        introTIle5.transform = introTIle5.transform.rotated(by: CGFloat(M_PI / 180) * rotationTile5)
        // Add scale to the transform
        introTIle5.transform = introTIle5.transform.scaledBy(x: scaleTile5, y: scaleTile5)
        
        
        //        Tile 6 transform
        
        let txTile6 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -66, r2Max: 0)
        let tyTile6 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -415, r2Max: 0)
        let rotationTile6 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: -10, r2Max: 0)
        let scaleTile6 = convertValue(inputValue: CGFloat(offSet), r1Min: 0, r1Max: 667, r2Min: 1.65, r2Max: 1)
        
        
        introTile6.transform = CGAffineTransform(translationX: txTile6, y: tyTile6)
        introTile6.transform = CGAffineTransform(rotationAngle: (CGFloat(Double(rotationTile6) * M_PI / 180)))
        
        // Reset the transform and apply a translation
        introTile6.transform = CGAffineTransform(translationX: txTile6, y: tyTile6)
        // Add rotation to the transform
        introTile6.transform = introTile6.transform.rotated(by: CGFloat(M_PI / 180) * rotationTile6)
        // Add scale to the transform
        introTile6.transform = introTile6.transform.scaledBy(x: scaleTile6, y: scaleTile6)
        
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
