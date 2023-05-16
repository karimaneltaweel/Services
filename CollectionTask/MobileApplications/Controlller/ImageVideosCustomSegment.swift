//
//  ImageVideosCustomSegment.swift
//  CollectionTask
//
//  Created by kariman eltawel on 15/05/2023.
//

import UIKit
@IBDesignable class ImageVideosCustomSegment : UIControl{
    
    private var labels = [UILabel]()
    var thumbView = UIView()
    var items : [String] = ["Images","Videos"]{
        didSet{
            setupLabels()
        }
    }
    //select------property
    var selectedIndex : Int = 0{
        
        didSet{
            displayNewSelectedIndex()
        }
    }
    
    // MARK: - override init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        
    }
    
    // MARK: - Helpers
    
    func setupLabels(){
        
        for label in labels{
            label.removeFromSuperview()
            labels.removeAll()
        }
        
        for index in 0..<items.count{
            let label = UILabel(frame: CGRectZero)
            label.text = items [index]
            label.textAlignment = .center
            label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            self.addSubview(label)
            labels.append(label)
        }
    }
    
    func displayNewSelectedIndex(){
        var label = labels[selectedIndex]
        self.thumbView.frame = label.frame
    }
    
    func setupView(){
        layer.cornerRadius = frame.height/2
        layer.borderColor = UIColor(white: 0.5, alpha: 1.0).cgColor
        layer.borderWidth = 2
        backgroundColor = #colorLiteral(red: 0.7137254902, green: 0.06274509804, blue: 0.1098039216, alpha: 1)
        setupLabels()
        insertSubview(thumbView, at: 0)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard let touchLocation = touches.first?.location(in: self) else { return }
         
         let segmentWidth = bounds.width / CGFloat(items.count)
         let touchedSegmentIndex = Int(touchLocation.x / segmentWidth)
         
         if touchedSegmentIndex != selectedIndex {
             selectedIndex = touchedSegmentIndex
             sendActions(for: .valueChanged)
         }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var selectedFrame = self.bounds
        let newWidth = CGRectGetWidth(selectedFrame)/CGFloat(items.count)
        selectedFrame.size.width = newWidth
        thumbView.frame = selectedFrame
        thumbView.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        thumbView.layer.cornerRadius = thumbView.frame.height / 2
        let labelHeight = self.bounds.height
        let labelWidth = self.bounds.width / CGFloat(labels.count)
        
        for index in 0...labels.count-1{
            var label = labels[index]
            let xPosition = CGFloat(index) * labelWidth
            label.frame = CGRectMake(xPosition, 0, labelWidth, labelHeight)

        }
    }
}
