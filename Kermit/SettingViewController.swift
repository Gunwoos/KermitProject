//
//  SettingViewController.swift
//  Kermit
//
//  Created by 임건우 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    @IBAction func play(_ sender: Any) {
        if audioPlayer.isPlaying == false
        {
            audioPlayer.play()
        }
    }
    
    @IBAction func pause(_ sender: Any) {
        if audioPlayer.isPlaying
        {
            audioPlayer.pause()
        }
    }
    
    @IBAction func prev(_ sender: Any) {
    }
    
    @IBAction func next(_ sender: Any) {
    }
    
    @IBAction func soundSlider(_ sender: UISlider) {
        audioPlayer.volume = sender.value
    }
    
    
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
    
}
