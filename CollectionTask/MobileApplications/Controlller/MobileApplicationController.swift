//
//  MobileApplicationController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit

class MobileApplicationController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func SegmentAction(_ sender: Any) {
        print("index = \(segmentControl.selectedSegmentIndex)")
        print("value = \(segmentControl.titleForSegment(at: segmentControl.selectedSegmentIndex) ?? "")")
    }
    
}

