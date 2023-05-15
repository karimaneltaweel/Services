//
//  MobileApplicationController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit
//import youtube_ios_player_helper

class MobileApplicationController: UIViewController {
    
    var currentCollection:Int?
//    var player:YTSwiftyPlayer!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "MobileApplicationCell", bundle: nil), forCellWithReuseIdentifier: "MobileApplicationCell")
        collectionView.register(UINib(nibName: "VideoCollectionCell", bundle: nil), forCellWithReuseIdentifier: "VideoCollectionCell")
        
        // Create a new player
//               player = YTSwiftyPlayer(
//                   frame: .zero,
//                   playerVars: [
//                       .playsInline(false),
//                       .videoID("9AALILYu58w"),
//                       .loopVideo(true),
//                       .showRelatedVideo(false),
//                       .autoplay(true)
//                   ])

//               view = player
//               player.delegate = self as? YTSwiftyPlayerDelegate
//
//               // Load video player
//               let playerPath = Bundle(for: ViewController.self).path(forResource: "player", ofType: "html")!
//               let htmlString = try! String(contentsOfFile: playerPath, encoding: .utf8)
//               player.loadPlayerHTML(htmlString)
           }
        

        
    
    
    
    @IBAction func SegmentAction(_ sender: Any) {
        
        currentCollection = segmentControl.selectedSegmentIndex
        collectionView.reloadData()
    }
    
}

