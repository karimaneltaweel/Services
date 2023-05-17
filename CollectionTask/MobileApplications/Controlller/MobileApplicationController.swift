//
//  MobileApplicationController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit

class MobileApplicationController: UIViewController , HeaderDelegate {
    
    var segmentHeaderIndex : Int?
    
    var headerInstance = HeaderController()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerInstance.delegate = self
        
        collectionView.register(UINib(nibName: "MobileApplicationCell", bundle: nil), forCellWithReuseIdentifier: "MobileApplicationCell")
        collectionView.register(UINib(nibName: "VideoCollectionCell", bundle: nil), forCellWithReuseIdentifier: "VideoCollectionCell")
    }
    
    func didSelectSegmentedControl(selectedNumber: Int) {
        segmentHeaderIndex = selectedNumber
        collectionView.reloadData()
    }
    
    
    
    
    
    
    
}


