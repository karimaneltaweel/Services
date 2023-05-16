//
//  CustomCollectionViewCell.swift
//  CollectionTask
//
//  Created by kariman eltawel on 14/05/2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    func setUp(cell:content){
        
        image.image = cell.cellImage
        label.text = cell.cellLabel
        
    }
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
    }
    
}

struct content{
    let cellImage:UIImage
    let cellLabel:String
}
