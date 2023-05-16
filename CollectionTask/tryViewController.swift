//
//  tryViewController.swift
//  CollectionTask
//
//  Created by kariman eltawel on 16/05/2023.
//

import UIKit

class tryViewController: UIViewController {

    @IBOutlet weak var Segment: ImageVideosCustomSegment!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func Action(_ sender: Any) {
        print("index=\(Segment.selectedIndex)")
        print("inex=\(Segment.selectedIndex.hashValue)")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
