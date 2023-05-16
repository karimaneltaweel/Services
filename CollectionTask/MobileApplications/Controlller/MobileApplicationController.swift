//
//  MobileApplicationController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit

class MobileApplicationController: UIViewController {
    
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.segmentControl.layer.cornerRadius = 15.0
//        self.segmentControl.layer.borderColor = #colorLiteral(red: 0.7137254902, green: 0.06274509804, blue: 0.1098039216, alpha: 1)
//        self.segmentControl.layer.borderWidth = 1.0
//        self.segmentControl.layer.masksToBounds = true
        
        collectionView.register(UINib(nibName: "MobileApplicationCell", bundle: nil), forCellWithReuseIdentifier: "MobileApplicationCell")
        collectionView.register(UINib(nibName: "VideoCollectionCell", bundle: nil), forCellWithReuseIdentifier: "VideoCollectionCell")
    }
    
    
    
    
    
    
    @IBAction func SegmentAction(_ sender: Any) {
        
        collectionView.reloadData()
    }
    
}

