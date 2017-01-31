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
        //backgroundColor = UIColor.red
        addSubview(thumbnailImageView)
        addSubview(seperatorLine)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": thumbnailImageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(100)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": thumbnailImageView]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": seperatorLine]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(1)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": seperatorLine]))
    
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

