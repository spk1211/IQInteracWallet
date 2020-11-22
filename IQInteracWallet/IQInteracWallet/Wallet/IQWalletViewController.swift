//
//  IQWalletViewController.swift
//  TheBusinessStore
//
//  Created by Phanindra on 06/11/20.
//  Copyright © 2020 JettySoft. All rights reserved.
//

import UIKit

enum WalletContentType:Int {
    case totalBalance = 0, amountLoaded, amountUsed, amountReceived, amountSent
}

class IQWalletViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var walletCollectionView: UICollectionView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var addMoneyButton: UIButton!
    let padding:CGFloat = 2
    
    var color:UIColor = .red
   
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Wallet"
        titleLabel.text = ""
        setupGridView()
        // Do any additional setup after loading the view.
    }
    
    func setupGridView() {
        walletCollectionView.register(UINib.init(nibName:"WalletInfoCell", bundle:nil), forCellWithReuseIdentifier: "WalletInfoCell")
        walletCollectionView.alwaysBounceVertical = true
        walletCollectionView.showsVerticalScrollIndicator = true
        walletCollectionView.dataSource = self
        walletCollectionView.delegate = self
        walletCollectionView.backgroundColor = UIColor.white
        walletCollectionView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 75, right: 0)
        walletCollectionView.reloadData()
        
        addMoneyButton.setTitle("Add money to Wallet", for: .normal)
        addMoneyButton.setTitleColor(color, for: .normal)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            return CGSize(width: walletCollectionView.bounds.size.width - 6, height: 150)
        }
        
        return CGSize(width: walletCollectionView.frame.size.width/2 - padding, height: 145)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: padding/2, left: padding/2, bottom: padding/2, right: padding/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: WalletInfoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "WalletInfoCell", for: indexPath) as! WalletInfoCell
        cell.configureView(for: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let walletDetailsViewController = WalletDetailsViewController.init(nibName: "WalletDetailsViewController", bundle: nil)
        guard let section = WalletContentType.init(rawValue: indexPath.row) else {
            return
        }
        walletDetailsViewController.walletType = section
        navigationController?.pushViewController(walletDetailsViewController, animated: true)
    }
    
    @IBAction func addMoneyButtonAction(_ sender: Any) {
        let walletinfoViewController = WalletInfoViewController(nibName: "WalletInfoViewController", bundle: nil)
        navigationController?.present(walletinfoViewController, animated: true, completion: nil)
    }
    
    
}
