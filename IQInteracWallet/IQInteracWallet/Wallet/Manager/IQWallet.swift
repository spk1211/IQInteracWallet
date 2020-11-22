//
//  IQWallet.swift
//  IQWallet
//
//  Created by Phanindra on 12/11/20.
//  Copyright © 2020 Jettysoft. All rights reserved.
//

import UIKit

class IQWallet: NSObject {

    static let shared = IQWallet()
    
    static let defaultColor:UIColor = .black
    
    static var themeColor:UIColor?
    
    static var walletFont:UIFont?
    
    static var infoDetailFont:UIFont?
    
    static var walletInfo1Color:UIColor?
    static var walletInfo2Color:UIColor?
    static var walletInfo3Color:UIColor?
    static var walletInfo4Color:UIColor?

}


extension String{
    func colored(with color: UIColor) -> NSAttributedString {
        return NSMutableAttributedString(string: self, attributes: [.foregroundColor: color])
    }
}
