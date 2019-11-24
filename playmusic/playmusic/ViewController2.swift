//
//  ViewController2.swift
//  playmusic
//
//  Created by Quân on 10/5/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController2: UIViewController {

    @IBOutlet weak var sld: UISlider!
    @IBOutlet weak var img: UIImageView!
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        img.image = #imageLiteral(resourceName: "250px-Ca_sĩ_Min_trong_MV_có_em_chờ")
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            self.img.transform = self.img.transform.rotated(by: .pi/180)
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        audioPlayer?.stop()
    }
    
    func bindData(index : casi) {
        //hinh
        do {
            let url: URL = URL(string: index.hinh)!
            //print(casi.hinh)
            let data: Data = try Data(contentsOf: url)
            DispatchQueue.main.async {
                self.img.image = UIImage(data: data)
                self.img.contentMode = .scaleAspectFill
                self.img.layer.cornerRadius = self.img.frame.height/2
            }
            let link: URL = URL(string: index.nhac)!
            //nhac
            playSound(audioUrl: link)
            
        } catch  {
            print("loi")
        }
    }
    
    @IBAction func Volume(_ sender: UISlider) {
        audioPlayer?.volume = sender.value
        //audioPlayer?.setVolume(sender.value, fadeDuration: 1)
    }
    func playSound(audioUrl: URL) {
        let documentsDirectoryURL =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            
            // lets create your destination file url
            let destinationUrl = documentsDirectoryURL.appendingPathComponent(audioUrl.lastPathComponent)
            //print(destinationUrl)
            
            // to check if it exists before downloading it
            if FileManager.default.fileExists(atPath: destinationUrl.path) {
                //print("The file already exists at path")
                
                // if the file doesn't exist
            } else {
                
                // you can use NSURLSession.sharedSession to download the data asynchronously
                URLSession.shared.downloadTask(with: audioUrl, completionHandler: { (location, response, error) -> Void in
                    guard let location = location, error == nil else { return }
                    do {
                        // after downloading your file you need to move it to your destination url
                        try FileManager.default.moveItem(at: location, to: destinationUrl)
                        //print("File moved to documents folder")
                    } catch let error as NSError {
                        //print(error.localizedDescription)
                    }
                }).resume()
            }
            //play downloaded file
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: destinationUrl)
                guard let player = audioPlayer else { return }
                
                player.prepareToPlay()
                player.play()
            } catch let error {
                //print(error.localizedDescription)
            }
    }
}
