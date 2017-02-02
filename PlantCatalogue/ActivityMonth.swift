//
//  ActivityMonth.swift
//  PlantCat
//
//  Created by David on 1/2/17.
//  Copyright © 2017 David. All rights reserved.
//

import Foundation
//
//  ActivityMonth.swift
//  PlantCat
//
//  Created by David on 1/2/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ActivityMonth: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.myAppWhite
        
        // Setup SubViews for ActivtyMonth
        setupViews()
        
    }
    
    // Activity Month Icon
    let activityMonthIcon: UIImageView = {
        let activityMonthIcon = UIImageView()
        activityMonthIcon.image = UIImage(named: "calendar")?.withRenderingMode(.alwaysTemplate)
        activityMonthIcon.tintColor = UIColor.myAppGreen
        activityMonthIcon.translatesAutoresizingMaskIntoConstraints = false
        return activityMonthIcon
    }()
    
    // Calendar buttons collectionView
    lazy var calendarCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //cv.backgroundColor = UIColor.clear
        cv.backgroundColor = UIColor.red
        cv.dataSource = self
        cv.delegate = self
        cv.register(CalendarMonthButton.self, forCellWithReuseIdentifier: "cellID")
        cv.allowsMultipleSelection = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        return cv
    }()
    
    
    
    // Return 12 cells
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    // Register collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! CalendarMonthButton
       
        cell.backgroundColor = UIColor.blue
        
        return cell
    }
    
    // Divide the collectionview by 6 x 2
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 7
        let sectionInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = frame.width  - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: (frame.height / 2) - 10 )
    }
    
    
    // Reduce minimum line spacing between collectionview cells to zero
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    private func setupViews() {
        
        addSubview(activityMonthIcon)
        addSubview(calendarCollectionView)
        
        addConstraintsWithFormat(format: "H:|[v0(30)]", views: activityMonthIcon)
        addConstraintsWithFormat(format: "V:|-35-[v0(30)]", views: activityMonthIcon)
        
        addConstraintsWithFormat(format: "H:|-37-[v0]-|", views: calendarCollectionView)
        addConstraintsWithFormat(format: "V:|-[v0]-|", views: calendarCollectionView)
        
    }
    
    // Reloads CollectionView upon Rotation
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        calendarCollectionView.collectionViewLayout.invalidateLayout()
    }
    
    // Resize collectionViewCells upon rotation
    func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        viewWillTransition(to: size, with: coordinator)
        updateCollectionViewLayout(with: size)
    }
    
    private func updateCollectionViewLayout(with size: CGSize) {
        self.calendarCollectionView.invalidateIntrinsicContentSize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CalendarMonthButton: UICollectionViewCell {
    
    override init(frame: CGRect) {
        // When dequeueReusableCell is called this init method is called if it needs a new cell
        super.init(frame: frame)
        setupViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let calButton: UILabel = {
        
        let cb = UILabel()
        cb.translatesAutoresizingMaskIntoConstraints = false
        cb.adjustsFontSizeToFitWidth = true
        cb.textAlignment = .center
        cb.numberOfLines = 1
        cb.textColor = UIColor.myAppWhite
        
        cb.text = "Hello"
        
        return cb
        
    }()
    
    
    private func setupViews(){
        addSubview(calButton)
        addConstraintsWithFormat(format: "H:|[v0]|", views: calButton)
        addConstraintsWithFormat(format: "V:|[v0]|", views: calButton)
    }
    
}
