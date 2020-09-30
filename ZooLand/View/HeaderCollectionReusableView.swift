//
//  HeaderCollectionReusableView.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 29/09/2020.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
        
    @IBOutlet weak var sectionName: UILabel!
    
    func headerSetup(title: String) {
        sectionName.text = title
    }
    
}
