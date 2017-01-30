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
            return Style.TextAttributes(font: .myAppTitle, color: .myAppWhite, backgroundColor: .myAppGreen)
        case .title:
            return Style.TextAttributes(font: .myAppTitle, color: .myAppWhite)
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
        return UIColor(hexString: "FA3D3D").withAlphaComponent(1)
    }
    static var myAppGreen: UIColor {
        return UIColor(hexString: "#1B5E20").withAlphaComponent(1)
    }
    static var myAppWhite: UIColor {
        return UIColor(hexString: "#FFFFFF").withAlphaComponent(1)
    }
    static var myAppBlue: UIColor {
        return UIColor(hexString: "#3D3DFA").withAlphaComponent(1)
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
