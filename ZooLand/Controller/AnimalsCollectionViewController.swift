//
//  AnimalsCollectionViewController.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 28/09/2020.
//

import UIKit

class AnimalsCollectionViewController: UICollectionViewController {
    
    private let reuseIdentifier = "AnimalCollectionViewCell"

    var zoo: [AnimalCategory] = [ AnimalCategory(name: "Mammifères", animals: Datas().mammiferes ),
                                  AnimalCategory(name: "Oiseaux", animals: Datas().oiseaux ),
                                  AnimalCategory(name: "Reptiles", animals: Datas().reptiles ) ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellSetUpLayout()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier) // ??

        // Do any additional setup after loading the view.
    }
    
    func cellSetUpLayout() {
        let float = collectionView.frame.width / 3.3
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: float, height: float)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .vertical
        
        layout.headerReferenceSize = CGSize(width: collectionView.frame.width, height: 75) // Pour header

        collectionView.collectionViewLayout = layout

    }



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if segue.identifier == "toDetail" {
            if let destDetail = segue.destination as? DetailAnimalViewController {
                destDetail.animal = sender as? Animal
            }
        }
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { // Quandon clique sur une cellule de la grille
        let item = zoo[indexPath.section].animals[indexPath.item]
        performSegue(withIdentifier: "toDetail", sender: item)
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return zoo.count    // Nombre de catégories
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return zoo[section].animals.count // Nombre d'animaux pour une section donnée
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! AnimalCollectionViewCell
        // Configure the cell
        cell.animal = zoo[indexPath.section].animals[indexPath.item]
        return cell
    }
    
    // Header
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            if let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as? HeaderCollectionReusableView {
                //header.sectionName.text = zoo[indexPath.section].name
                header.headerSetup(title: zoo[indexPath.section].name)
                return header
            }
        }
        return UICollectionReusableView()
//        switch kind {
//        case UICollectionView.elementKindSectionHeader:
//            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath)
//            headerView.backgroundColor = UIColor.blue
//            return headerView
//        case UICollectionView.elementKindSectionFooter:
//            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath)
//            footerView.backgroundColor = UIColor.green
//            return footerView
//        default:
//            assert(false, "Unexpected element kind")
//        }
    }
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
