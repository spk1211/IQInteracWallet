//
//  IQWallet.swift
//  IQWallet
//
//  Created by Phanindra on 12/11/20.
//  Copyright © 2020 Jettysoft. All rights reserved.
//

import UIKit

public class IQWallet: NSObject {

    let walletBlue = UIColorRGB(0x35B6FF)
    let walletGreen = UIColorRGB(0x37D071)
    let walletRed = UIColorRGB(0xFF5454)
    let walletOrange = UIColorRGB(0xF89A2E)
    let walletDarkBlue = UIColorRGB(0x001453)

    
    static let shared = IQWallet()
    
    static let defaultColor:UIColor = .black
    
    static var themeColor:UIColor?
    
    static var walletFont:UIFont?
    
    static var infoDetailFont:UIFont?
    
    static var walletInfo1Color:UIColor = UIColorRGB(0x35B6FF)
    static var walletInfo2Color:UIColor = UIColorRGB(0x37D071)
    static var walletInfo3Color:UIColor = UIColorRGB(0xFF5454)
    static var walletInfo4Color:UIColor = UIColorRGB(0xF89A2E)
    

    
    public static func UIColorRGB(_ rgb: Int) -> UIColor {
        let blue = CGFloat(rgb & 0xFF)
        let green = CGFloat((rgb >> 8) & 0xFF)
        let red = CGFloat((rgb >> 16) & 0xFF)
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1)
    }
}



extension String{
    func colored(with color: UIColor) -> NSAttributedString {
        return NSMutableAttributedString(string: self, attributes: [.foregroundColor: color])
    }
    
    
}
