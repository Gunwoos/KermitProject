//
//  CharacterViewController.swift
//  Kermit
//
//  Created by 임건우 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

extension CharacterViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let data = KermitData()
        return data.imageList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = KermitData()
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell") as! CharacterTableViewCell
       
        cell.CharacterImage.image = data.imageList[indexPath.row]
        cell.CharacterImage.contentMode = .scaleToFill
        cell.CharacterName.text = data.nameList[indexPath.row]
        
        return cell
    }
}

extension CharacterViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = KermitData()
        let object = data.imageList[indexPath.row]
        
        NotificationCenter.default.post(name: ImageNoti, object: object, userInfo: ["num":indexPath.row])
    }
}
