//
//  ViewController.swift
//  PlantCatalogue
//
//  Created by David on 30/1/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class PropertyViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let style = Style.myApp

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add smokeimage
        addSmokeImageView()
        
        // Apply style theme to app
        applyStyle()
        
        // Setup Navigation Bar
        navBarSetup()
        
        // Setup CollectionView
        collectionViewSetup()
    }
    
    func navBarSetup() {
        navigationItem.title = "Home"
    }
    
    func applyStyle() {
        
        view.backgroundColor = style.backgroundColor
        
        if let navBar = navigationController?.navigationBar {
            style.apply(to: navBar)
        }
    }
    
    // SmokeBackground imageView
    let smokeImageView: UIImageView = {
        let smokeImage = UIImageView(frame: CGRect.zero)
        smokeImage.image = UIImage(named: "smokebackground")
        smokeImage.layer.masksToBounds = true
        smokeImage.contentMode = .scaleAspectFill
        smokeImage.alpha = 0.2
        smokeImage.translatesAutoresizingMaskIntoConstraints = false
        return smokeImage
    }()
    
    func addSmokeImageView() {
        
        // Remove the smokeImageView first if it exists
        if smokeImageView.isDescendant(of: view) {
            self.smokeImageView.removeFromSuperview()
        }
        
        view.insertSubview(smokeImageView, at: 0)
        
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: smokeImageView)
        view.addConstraintsWithFormat(format: "V:|[v0]|", views: smokeImageView)
    }

    func collectionViewSetup() {
        
        // Start with a white background
        view.backgroundColor = UIColor.white
        
        // Now set the colletionView to a clearview
        collectionView?.backgroundColor = UIColor.clear
        
        // Register collectionview cell
        collectionView?.register(PlantInformationCellView.self, forCellWithReuseIdentifier: "cellId")
    }
    
    // Setup collectionViewCell row number
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    // Setup collectionViewCell ResueIdentifier
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        // Set the background color of selected cell in the collectionView
        // cell.selectedBackgroundView = UIView(frame: cell.bounds)
        // cell.selectedBackgroundView!.backgroundColor = .black
        
        return cell
    }
    
    // Setup miniumline spacing for each cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // Setup collectionViewCell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.width, height: 200)
    }

    
    // Resize collectionViewCells upon rotation
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateCollectionViewLayout(with: size)
    }
    
    private func updateCollectionViewLayout(with size: CGSize) {
        if let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.invalidateLayout()
        }
    }

    // Update background Image upon rotation
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            addSmokeImageView()
        } else {
            addSmokeImageView()
        }
    }
    
    // Handle errors
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
