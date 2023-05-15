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
        switch segmentControl.selectedSegmentIndex{
        case 0:
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MobileApplicationCell", for: indexPath) as? MobileApplicationCell else {fatalError("Unable deque cell...")}
            cell.mobileAppImage.image = UIImage(named: "mobile1")
            return cell
            
        case 1:
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoCollectionCell", for: indexPath) as? VideoCollectionCell else {fatalError("Unable deque cell...")}
            return cell
            
        default:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MobileApplicationCell", for: indexPath) as? MobileApplicationCell else {fatalError("Unable deque cell...")}
            print(currentCollection ?? 0)
            cell.mobileAppImage.image = UIImage(named: "mobile1")
            return cell
        }
        
    }
    
}

extension MobileApplicationController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width , height:collectionView.frame.size.height*0.6)
        
    }
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    //            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    //        }
    
}
