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
    
    func collectionViewSetup() {
        
        // Start with a white background
        collectionView?.backgroundColor = UIColor.white
        
        // Overlay up backgroundImage
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "smokebackground")
        backgroundImage.alpha = 0.2
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        backgroundImage.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(backgroundImage)
        
        // Register collectionview cell
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    // Setup collectionViewCell row number
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    // Setup collectionViewCell ResueIdentifier
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        return cell
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
    
    // Handle errors
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
