//
//  WalletDetailsViewController.swift
//  TheBusinessStore
//
//  Created by Phanindra on 06/11/20.
//  Copyright © 2020 JettySoft. All rights reserved.
//

import UIKit

class WalletDetailsViewController: UIViewController {
    
    @IBOutlet var emptyBGView: UIView!
    @IBOutlet var emptyInfoImageView: UIImageView!
    @IBOutlet var detailsTableView: UITableView!
    @IBOutlet var emptyInfoLabel: UILabel!
    
    var walletType:WalletContentType = .amountLoaded
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emptyDetails()
    }
    
    func emptyDetails() {
        emptyBGView.isHidden = false
        let WalletInfoCellView = Bundle.main.loadNibNamed("WalletInfoCell", owner: self, options: nil)!.last as? WalletInfoCell
        emptyInfoImageView.addSubview(WalletInfoCellView!)
        WalletInfoCellView?.frame = CGRect(x: -110, y: -50, width: 300, height: 150)
        WalletInfoCellView?.configureView(for: walletType.rawValue)
        var imgName = ""
        switch walletType {
        case .totalBalance:
            emptyInfoLabel.text = "You haven't made any transactions yet."
            imgName = "ic_totalbalance"
        case .amountLoaded:
            imgName = "ic_amountloaded"
            emptyInfoLabel.text = "You haven't made any transactions yet. Start with adding money to your secured wallet and use money from wallet to pay"
        case .amountReceived:
            imgName = "ic_amountreceived"
            emptyInfoLabel.text = "You haven't received any money from your family/friends yet. Dont worry we will alert if you receive money"
        case .amountSent:
            imgName = "ic_amountsent"
            emptyInfoLabel.text = "You haven't made any transactions yet. Start sending money now."
        case .amountUsed:
            imgName = "ic_amountused"
            emptyInfoLabel.text = "You haven't made any transactions yet. Start making an order"
        }
        emptyInfoLabel.font = UIFont.init(name: "Helvetica-Regular", size: 15)
        emptyInfoLabel.textColor = .black
    }
    

}
