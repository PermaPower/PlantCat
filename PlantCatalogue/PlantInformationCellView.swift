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
        
        addSubview(activityMonthView)
        addSubview(seperatorLine)
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: activityMonthView)
        addConstraintsWithFormat(format: "V:|[v0(100)]", views: activityMonthView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: seperatorLine)
        addConstraintsWithFormat(format: "V:[v0(1)]|", views: seperatorLine)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

