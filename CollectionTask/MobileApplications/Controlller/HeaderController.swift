//
//  HeaderController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 16/05/2023.
//

import UIKit

protocol HeaderDelegate: AnyObject {
    func didSelectSegmentedControl(selectedNumber: Int)
}

class HeaderController: UICollectionReusableView {
    weak var delegate: HeaderDelegate?
    
    @IBOutlet weak var segmentHeader: ImageVideosCustomSegment!
    
    
    
    @IBAction func segmentAction(_ sender: Any) {
        
        delegate?.didSelectSegmentedControl(selectedNumber: segmentHeader.selectedIndex)
        
    }
}
