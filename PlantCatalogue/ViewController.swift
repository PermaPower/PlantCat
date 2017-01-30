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
    }
    
    func navBarSetup() {
        navigationItem.title = "Home"
       // style.apply(textStyle: style.font(for: .myAppTitle), to: UINavigationBar)
    }
    
    
    func applyStyle() {
        view.backgroundColor = style.backgroundColor
        
        if let navBar = navigationController?.navigationBar {
            style.apply(to: navBar)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

