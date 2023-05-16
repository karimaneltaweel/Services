//
//  ViewController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 14/05/2023.
//

import UIKit

class ViewController: UIViewController {
    var array: [content] = []
    
    var collectionWidth: CGFloat?
    var collectionheight: CGFloat?
    var collectionTop,collectionBottom,collectionLeft,CollectionRight:CGFloat?
    
    @IBOutlet weak var collectionView: UICollectionView!
    // MARK: - lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
                
        collectionheight = collectionView.frame.size.height * 0.3
        collectionWidth = collectionView.frame.size.width * 0.9
        
        array = [content(cellImage: #imageLiteral(resourceName: "pic1") ,cellLabel:"تصميم المواقع الالكترونية" ),content(cellImage: #imageLiteral(resourceName: "Pic6") ,cellLabel:"تصميم الهوية التجارية" ),content(cellImage: #imageLiteral(resourceName: "pic3") ,cellLabel:"إدارة السوشيال ميديا"),content(cellImage: #imageLiteral(resourceName: "pic4") ,cellLabel:"تصميم تطبيقات الموبايل" ),content(cellImage: #imageLiteral(resourceName: "pic5") ,cellLabel:"فيديوهات الموشن جرافيك" ),content(cellImage: #imageLiteral(resourceName: "Pic6") ,cellLabel:"التسويق الالكتروني" ),content(cellImage: #imageLiteral(resourceName: "pic7") ,cellLabel:"تصميم المتاجر الالكترونية" ),content(cellImage: #imageLiteral(resourceName: "pic8") ,cellLabel:"أنظمة نقاط البيع" ),content(cellImage: #imageLiteral(resourceName: "pic9") ,cellLabel:"الدعم الفني"),content(cellImage: #imageLiteral(resourceName: "pic10") ,cellLabel:"الاستضافة والسيرفرات")]
        
    }
    
    
    
    @IBAction func listButtonAction(_ sender: Any) {
        
        if collectionheight == (collectionView.frame.size.width/2)-43 && collectionWidth == (collectionView.frame.size.height/4)-40  {
            collectionheight = collectionView.frame.size.height * 0.3
            collectionWidth = collectionView.frame.size.width * 0.9
            collectionTop = 0
            collectionLeft = 0
            collectionBottom = 0
            CollectionRight = 0
            
        }
        
        else {
            collectionheight = (collectionView.frame.size.width/2)-43
            collectionWidth = (collectionView.frame.size.height/4)-40
            collectionTop = 5
            collectionLeft = 36
            collectionBottom = 5
            CollectionRight = 36
            
        }
        
        collectionView.reloadData()
    }
}
