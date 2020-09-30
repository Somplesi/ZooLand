//
//  AnimalCollectionViewCell.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 29/09/2020.
//

import UIKit

class AnimalCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    
    var animal: Animal! {
        didSet {
            contentView.clipsToBounds = true
            contentView.layer.cornerRadius = 20
            
            animalImage.image = UIImage(named: animal.imageString)
            animalName.text = animal.name
        }
    }
    
}
