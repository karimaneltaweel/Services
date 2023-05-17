//
//  MobileApplicationCell.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit

class MobileApplicationCell: UICollectionViewCell {
    
    @IBOutlet weak var mobileAppImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
    }
    
}
