//
//  ViewController.swift
//  PlantCatalogue
//
//  Created by David on 30/1/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let style = Style.myApp
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Apply style theme to app
        applyStyle()
        
        // Setup Navigation Bar
        navBarSetup()
        
        // Setup Background SmokeBackground Image
        settingUpBackgroundImage()
    }
    
    func navBarSetup() {
        navigationItem.title = "Home"
    }
    
    
    func applyStyle() {
        if let navBar = navigationController?.navigationBar {
            style.apply(to: navBar)
        }
    }

    func settingUpBackgroundImage() {
        // Setting up backgroundImage
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "smokebackground")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        backgroundImage.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

