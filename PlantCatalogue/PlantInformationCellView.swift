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
    
    // ThumbnailImageView
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.blue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // Seperator line
    let seperatorLine: UIView = {
        let seperatorView = UIView()
        seperatorView.backgroundColor = UIColor.myAppSeperator
        seperatorView.translatesAutoresizingMaskIntoConstraints = false
        return seperatorView
    }()
    
    func setupViews() {
        
        addSubview(thumbnailImageView)
        addSubview(seperatorLine)
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        addConstraintsWithFormat(format: "V:|[v0(100)]", views: thumbnailImageView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: seperatorLine)
        addConstraintsWithFormat(format: "V:[v0(1)]|", views: seperatorLine)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

