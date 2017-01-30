//
//  Style+MyApp.swift
//  PlantCatalogue
//
//  Created by David on 30/1/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

extension Style {
    static var myApp: Style {
        return Style(
            backgroundColor: .white,
            preferredStatusBarStyle: .lightContent,
            attributesForStyle: { $0.myAppAttributes }
        )
    }
}

private extension Style.TextStyle {
    var myAppAttributes: Style.TextAttributes {
        switch self {
        case .navigationBar:
            return Style.TextAttributes(font: .myAppTitle, color: .myAppGreen, backgroundColor: .blue)
        case .title:
            return Style.TextAttributes(font: .myAppTitle, color: .myAppGreen)
        case .subtitle:
            return Style.TextAttributes(font: .myAppSubtitle, color: .myAppBlue)
        case .body:
            return Style.TextAttributes(font: .myAppBody, color: .black, backgroundColor: .white)
        case .button:
            return Style.TextAttributes(font: .myAppSubtitle, color: .white, backgroundColor: .myAppRed)
        }
    }
}

extension UIColor {
    static var myAppRed: UIColor {
        return UIColor(red: 1, green: 0.1, blue: 0.1, alpha: 1)
    }
    static var myAppGreen: UIColor {
        return UIColor(red: 0, green: 1, blue: 0, alpha: 1)
    }
    static var myAppBlue: UIColor {
        return UIColor(red: 0, green: 0.2, blue: 0.9, alpha: 1)
    }
}

extension UIFont {
    static var myAppTitle: UIFont {
        return UIFont.systemFont(ofSize: 17)
    }
    static var myAppSubtitle: UIFont {
        return UIFont.systemFont(ofSize: 15)
    }
    static var myAppBody: UIFont {
        return UIFont.systemFont(ofSize: 14)
    }
}
