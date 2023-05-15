//
//  MobileApplicationController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit

class MobileApplicationController: UIViewController {
    
    var currentCollection:Int?
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "MobileApplicationCell", bundle: nil), forCellWithReuseIdentifier: "MobileApplicationCell")

    }
    
    
    @IBAction func SegmentAction(_ sender: Any) {
        
        currentCollection = segmentControl.selectedSegmentIndex
        collectionView.reloadData()
        
//        print("index = \(segmentControl.selectedSegmentIndex)")
//        print("value = \(segmentControl.titleForSegment(at: segmentControl.selectedSegmentIndex) ?? "")")
    }
    
}

