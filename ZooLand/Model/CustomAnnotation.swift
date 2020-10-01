//
//  CustomAnnotation.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 01/10/2020.
//

import MapKit

class CustomAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var animal: Animal
    
    init(animal: Animal, coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        self.title = animal.name
        self.subtitle = animal.origine
        self.animal = animal
    }
}
