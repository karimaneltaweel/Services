//
//  MobileApplicationController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit

class MobileApplicationController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var CustomSegment: ImageVideosCustomSegment!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "MobileApplicationCell", bundle: nil), forCellWithReuseIdentifier: "MobileApplicationCell")
        collectionView.register(UINib(nibName: "VideoCollectionCell", bundle: nil), forCellWithReuseIdentifier: "VideoCollectionCell")
    }
    
    
    
    
    @IBAction func customSegment(_ sender: Any) {
        collectionView.reloadData()
        
    }
    
    
}

