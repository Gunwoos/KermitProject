//
//  SettingViewController.swift
//  Kermit
//
//  Created by 임건우 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var SettingBackground: UIView!
    
    @IBAction func BgHideAndIconShow(_ sender: UISlider) {
        
        let BGAlpha = CGFloat(sender.value)
        
        SettingBackground.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: BGAlpha)
        //        SettingBackground.backgroundColor = UIColor(
        //            red: 0.0,
        //            green: 0.0,
        //            blue: 0.0,
        //            alpha: BGAlpha)
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
