//
//  WalletInfoCellCell.swift
//  IQInteracWallet
//
//  Created by Phanindra on 21/11/20.
//  Copyright © 2020 Jettysoft. All rights reserved.
//

import UIKit

class WalletInfoCell: UICollectionViewCell {
    
    @IBOutlet var iconImgView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 8
        // Initialization code
    }
    //#35B6FF
    func configureView(for index:Int) {
        switch WalletContentType.init(rawValue: index) {
        case .totalBalance:
            iconImgView.image = UIImage.init(named: "ic_totalbalance")
            titleLabel.text = "Total Balance"
            infoLabel.text = "0.0"
        //            bgView.backgroundColor = walletBlue
        case .amountUsed:
            iconImgView.image = UIImage.init(named: "ic_amountused")
            titleLabel.text = "Amount Used"
            infoLabel.text = "0.0"
            //            bgView.backgroundColor = walletRed
            
        case .amountLoaded:
            iconImgView.image = UIImage.init(named: "ic_amountloaded")
            titleLabel.text = "Amount Loaded"
            infoLabel.text = "0.0"
            //            bgView.backgroundColor = walletDarkBlue
            
        case .amountReceived:
            iconImgView.image = UIImage.init(named: "ic_amountreceived")
            titleLabel.text = "Amount Received"
            infoLabel.text = "0.0"
            //            bgView.backgroundColor = walletGreen
            
        case .amountSent:
            iconImgView.image = UIImage.init(named: "ic_amountsent")
            titleLabel.text = "Amount Sent"
            infoLabel.text = "0.0"
            //            bgView.backgroundColor = walletOrange
            
            
        case .none:
            print("none")
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
