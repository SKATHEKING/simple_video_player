//
//  ViewController.swift
//  video_player
//
//  Created by Mateus Ouro on 13/09/2023.
//

import UIKit
import AVFoundation
import AVKit



class ViewController: UIViewController {
    
    var playerViewController=AVPlayerViewController()

    var playerView = AVPlayer()

    override func viewDidAppear(_ animated: Bool) {

    let fileURL = NSURL(fileURLWithPath: "/Users/mateusouro/Downloads/appartments_video.mp4")

        playerView = AVPlayer(url: fileURL as URL)

    playerViewController.player = playerView

        self.present(playerViewController,animated: true){

    self.playerViewController.player?.play()

    }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {

    super.didReceiveMemoryWarning()

    // Dispose of any resources that can be recreated.

    }


}

