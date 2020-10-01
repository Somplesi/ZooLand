//
//  CustomAnnotationView.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 01/10/2020.
//

import MapKit

class CustomAnnotationView: MKAnnotationView {
    
    init(annotation: CustomAnnotation, id: String) {
        super.init(annotation: annotation, reuseIdentifier: id)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        canShowCallout = true
        //image = UIImage(named: "panda")
        image = UIImage(named: "panda", in: nil, with: nil)
        
        // Construction du bouton de l'annotation
        let boutonAnnotation = UIButton(type: .infoDark)
        boutonAnnotation.addTarget(self, action: #selector(sendMessage), for: .touchUpInside)
        rightCalloutAccessoryView = boutonAnnotation
    }
    @objc func sendMessage() {
        if let annotation = annotation as? CustomAnnotation {
            let animal = annotation.animal
            NotificationCenter.default.post(name: Notification.Name("Tap"), object: nil, userInfo: ["animal": animal])
        }
    }
    
}
