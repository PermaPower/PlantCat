//
//  PlantInformationCellView.swift
//  PlantCat
//
//  Created by David on 31/1/17.
//  Copyright © 2017 David. All rights reserved.
//

// Setup the layout of each collectionViewCell

import UIKit

class PlantInformationCellView: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Call setupView
        setupViews()
    }
    
    // Title bar
    let activityTitle: UIView = {
        let at = UIView()
        at.backgroundColor = UIColor.myAppWhite
        at.translatesAutoresizingMaskIntoConstraints = false
        
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: at.bounds.width, height: at.bounds.height))
        title.text = "Activity Month"
        title.adjustsFontSizeToFitWidth = true
        title.textColor = UIColor.myAppGreen
        title.translatesAutoresizingMaskIntoConstraints = false
        
        at.addSubview(title)
        
        at.addConstraintsWithFormat(format: "H:|-16-[v0]", views: title)
        
        return at
    }()
    
    // ActivityMonth View
    let activityMonthView: ActivityMonth = {
        let amView = ActivityMonth()
        amView.translatesAutoresizingMaskIntoConstraints = false
        return amView
    }()
    
    // Seperator line
    let seperatorLine: UIView = {
        let seperatorView = UIView()
        seperatorView.backgroundColor = UIColor.myAppSeperator
        seperatorView.translatesAutoresizingMaskIntoConstraints = false
        return seperatorView
    }()
    
    private func setupViews() {
        
        addSubview(activityTitle)
        addSubview(activityMonthView)
        addSubview(seperatorLine)
        
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: activityTitle)
        addConstraintsWithFormat(format: "V:|[v0(20)]", views: activityTitle)
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: activityMonthView)
        addConstraintsWithFormat(format: "V:|-20-[v0(100)]", views: activityMonthView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: seperatorLine)
        addConstraintsWithFormat(format: "V:[v0(1)]|", views: seperatorLine)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

