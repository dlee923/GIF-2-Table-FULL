//
//  Extensions.swift
//  Gif 2 Table
//
//  Created by Daniel Lee on 4/21/17.
//  Copyright © 2017 DLEE. All rights reserved.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewDictionary = [String: UIView]()
        for (index, eachView) in views.enumerated() {
            eachView.translatesAutoresizingMaskIntoConstraints = false
            let key = "v\(index)"
            viewDictionary[key] = eachView
        }
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewDictionary))
    }
    
    func animateCornerRadius(to: CGFloat, duration: CFTimeInterval) {
        let cornerAnimation = CABasicAnimation(keyPath: "cornerAnimation")
        cornerAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        cornerAnimation.fromValue = self.layer.cornerRadius
        cornerAnimation.toValue = to
        cornerAnimation.duration = duration
        self.layer.add(cornerAnimation, forKey: "cornerAnimation")
        self.layer.cornerRadius = to
    }
}

extension UILabel {
    func setButtonTitles() {
        self.font = fontReno?.withSize(10)
        self.textAlignment = .center
        self.textColor = UIColor(red: 197/255, green: 199/255, blue: 143/255, alpha: 1)
    }
}

let fontLuna = UIFont(name: "Luna", size: 5)
let fontMandela = UIFont(name: "Mandela Script Personal Use", size: 5)
let fontHello = UIFont(name: "HelloIshBig", size: 5)
let fontMessy = UIFont(name: "KG Life is Messy", size: 5)
let fontReno = UIFont(name: "Renogare", size: 5)
let fontGeo = UIFont(name: "Geometos", size: 5)
let fontLemon = UIFont(name: "Lemon/Milk", size: 5)
let fontPorter = UIFont(name: "Porter", size: 5)

let tintedBlack = UIColor(white: 0.1, alpha: 1)
let tintedBlackLight = UIColor(white: 0.17, alpha: 1)

let globalBackgroundColor = UIColor(white: 0.90, alpha: 1)
let globalAccessoryColor = UIColor.white
let globalButtonTintColor = UIColor(white: 0.90, alpha: 1)
let globalDetailCardColor = UIColor.white
let globalDetailCardLblColor = UIColor(white: 0.0, alpha: 0.5)

//let globalBeigeColor = UIColor(red: 255/255, green: 252/255, blue: 182/255, alpha: 1.0)
let globalBeigeColor = UIColor(red: 255/255, green: 254/255, blue: 222/255, alpha: 1)
let globalBlueColor = UIColor(red: 4/255, green: 59/255, blue: 110/255, alpha: 1.0)
//let globalAccessoryColor = UIColor.white
//let globalButtonTintColor = UIColor(white: 0.90, alpha: 1)
//let globalDetailCardColor = UIColor(white: 0.90, alpha: 1)
//let globalDetailCardLblColor = UIColor(white: 0, alpha: 0.5)

enum BackgroundImage: String {
    case b1 = "background1"
    case b2 = "background2"
    case b3 = "background3"
    case b4 = "background4"
    case b5 = "background5"
    case b6 = "background6"
}
