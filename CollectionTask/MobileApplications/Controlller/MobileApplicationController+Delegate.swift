//
//  MobileApplicationController+Delegate.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit

extension MobileApplicationController : UICollectionViewDelegate , UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch segmentHeaderIndex {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MobileApplicationCell", for: indexPath) as? MobileApplicationCell else {fatalError("Unable deque cell...")}
            cell.mobileAppImage.image = UIImage(named: "mobile1")
            return cell
            
        case 1:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoCollectionCell", for: indexPath) as? VideoCollectionCell else {fatalError("Unable deque cell...")}
            return cell
            
        default:
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MobileApplicationCell", for: indexPath) as? MobileApplicationCell else {fatalError("Unable deque cell...")}
            cell.mobileAppImage.image = UIImage(named: "mobile1")
            return cell
        }
        
    }
    
}


extension MobileApplicationController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 30 , height:collectionView.frame.size.height*0.6)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "HeaderController",
                for: indexPath)
            
            guard let typedHeaderView = headerView as? HeaderController
            else { return headerView }
            
            typedHeaderView.addSubview(typedHeaderView.segmentHeader)
            
            typedHeaderView.delegate = self
            
            return typedHeaderView
        default:
            assert(false, "Invalid element type")
        }
        
    }
    
}
