//
//  WalletInfoViewController.swift
//  TheBusinessStore
//
//  Created by Phanindra on 06/11/20.
//  Copyright © 2020 JettySoft. All rights reserved.
//

import UIKit

class WalletInfoViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var stepsLabel: UILabel!
    var email:String?
    
    @IBOutlet var okButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Instructions"
        addInfo()
        // Do any additional setup after loading the view.
    }

    @IBAction func okButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func addInfo(){
        titleLabel.textColor = IQWallet.themeColor
        okButton.setTitleColor(IQWallet.themeColor, for: .normal)
        okButton.setTitle("Ok", for: .normal)
        let attributedText1 = "Step 1: Login to your Bank Account \n\n"
        let attributedText2 = "Step 2: Add following email \(email ?? "") to your Bank Account \n\n"
        let attributedText3 = "Step 3: Start sending money to email:\(email ?? "") and provide your registered 'Phone Number' of your account in Interac transfer message box"
        let fullString = NSMutableAttributedString.init()
        fullString.append(attributedText1.colored(with: IQWallet.walletInfo1Color))
        fullString.append(attributedText2.colored(with: IQWallet.walletInfo2Color))
        fullString.append(attributedText3.colored(with: IQWallet.walletInfo3Color))
        stepsLabel.attributedText = fullString
    }

  
    

}


