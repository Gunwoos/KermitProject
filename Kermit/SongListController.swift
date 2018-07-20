//
//  SongListController.swift
//  Kermit
//
//  Created by 김민웅 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

var songs:[String] = []
var audioPlayer = AVAudioPlayer()

class SongListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var MyTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = songs[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        do
        {
          let audioPath = Bundle.main.path(forResource: songs[indexPath.row], ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            audioPlayer.play()
        }
        /*
             do
        {
            if let audioPath = Bundle.main.path(forResource: songs[indexPath.row], ofType: ".mp3") {
                print(audioPath)
                
                let audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                //                audioPlayer.play()
            }
             */
        catch
        {
            print("ERROR")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gettingSongName()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gettingSongName() {
        let folderURL = URL(fileURLWithPath:  Bundle.main.resourcePath!)
        
        do
        {
            let songPath = try FileManager.default.contentsOfDirectory(at:  folderURL, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
            for song in songPath
            {
                var mySong = song.absoluteString
                
                if mySong.contains(".mp3")
                {
                    let findString = mySong.components(separatedBy: "/")
                    mySong = findString[findString.count-1]
//                    mySong = mySong.replacingOccurrences(of: "_", with: " ")
                    mySong = mySong.replacingOccurrences(of: ".mp3", with:"")
                    songs.append(mySong)
                }
            }
            
            MyTableView.reloadData()
        }
        catch
        {
            
        }
    }
    
}
