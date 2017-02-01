//
//  ActivityMonth.swift
//  PlantCat
//
//  Created by David on 1/2/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ActivityMonth: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.myAppWhite
        
        // Activity Month Icon
        let activityMonthIcon: UIImageView = {
            let activityMonthIcon = UIImageView()
            activityMonthIcon.image = UIImage(named: "calendar")?.withRenderingMode(.alwaysTemplate)
            activityMonthIcon.tintColor = UIColor.myAppGreen
            activityMonthIcon.translatesAutoresizingMaskIntoConstraints = false
            return activityMonthIcon
        }()
        
        addSubview(activityMonthIcon)
        
        addConstraintsWithFormat(format: "H:|[v0(30)]", views: activityMonthIcon)
        addConstraintsWithFormat(format: "V:|-35-[v0(30)]", views: activityMonthIcon)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
