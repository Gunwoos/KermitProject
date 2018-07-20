//
//  ViewController.swift
//  Kermit
//
//  Created by 임건우 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//

import UIKit

let ImageNoti = Notification.Name("ImageNoti")

class HomeViewController: UIViewController {

    @IBOutlet weak var HomeKermitImageView: UIImageView!
    var checkNum = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(changeHomeKermitImage(_:)),
            name: ImageNoti,
            object: nil
        )
    }
    
    func setHomeTitle(_ kermitCase: Int){
        let data = KermitData()
        let titleString = data.nameList[kermitCase]
        
        let attributedString = NSMutableAttributedString(string: titleString)
        
        let label = UILabel()
        label.attributedText = attributedString
        label.sizeToFit()
        self.navigationItem.titleView = label
    }

    @objc func changeHomeKermitImage(_ noti: Notification){
        let kermitImage = noti.object as! UIImage
        
        checkNum = noti.userInfo!["num"] as! Int
        HomeKermitImageView.image = kermitImage
        
        guard checkNum != 7 else { return }
        setHomeTitle(checkNum)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mapViewController = segue.destination as! MapViewController
        
        mapViewController.travelLocationImage = self.HomeKermitImageView.image!
        mapViewController.checkKermitLocation = self.checkNum
        
    }


    
}

