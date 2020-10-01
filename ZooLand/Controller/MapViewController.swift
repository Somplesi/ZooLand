//
//  MapViewController.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 01/10/2020.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    
    var allDatas = Datas().all()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupMap()
        
        convertAnimalToAnnotation()
        
        // Segue vers le détail de l'animal
        NotificationCenter.default.addObserver(self, selector: #selector(toDetail), name: Notification.Name("Tap"), object: nil)
        
    }
    @objc func toDetail(_ notification: Notification) {
        print(notification.userInfo ?? "")
        if let animal = notification.userInfo?["animal"] {
            performSegue(withIdentifier: "detail", sender: animal)
        }
    }
    
    // Créer une annotation pour un animal
    func convertAnimalToAnnotation() {
        allDatas.forEach { (animal) in
            // Récupérer les coordonnées GPS d'une ville (animal.origine)
            let geocoder = CLGeocoder()
            geocoder.geocodeAddressString(animal.origine) { (placemarks, error) in
                if let errorAnimalNotFound = error {
                    print(errorAnimalNotFound)
                }
                if let location = placemarks?.first?.location {
                    // Annotation standard
//                    let annotation = MKPointAnnotation()
//                    annotation.coordinate = location.coordinate
//                    annotation.title = animal.name
//                    self.map.addAnnotation(annotation)
                    // Annotation spécifique
                    self.map.addAnnotation(CustomAnnotation(animal: animal, coordinate: location.coordinate))
                }
            }
        }
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard segue.identifier == "detail" else { return }
        guard let nextVC = segue.destination as? DetailAnimalViewController else { return }
        nextVC.animal = sender as? Animal
    }
    
}

extension MapViewController: MKMapViewDelegate {
    
    // Init Map
    func setupMap() {
        map.delegate = self
        
        // Init Map
        let center = CLLocationCoordinate2D(latitude: 5, longitude: 40)
        let span = MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100)
        let region = MKCoordinateRegion(center: center, span: span)
        map.setRegion(region, animated: true)
    }
    
    // Changer les icones d'annotations par une autre image
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "id"
        if let newAnnotation = annotation as? CustomAnnotation {
            var view: CustomAnnotationView
            if let dequeue = map.dequeueReusableAnnotationView(withIdentifier: identifier) as? CustomAnnotationView {
                dequeue.annotation = newAnnotation
                view = dequeue
            } else {
                view = CustomAnnotationView(annotation: newAnnotation, id: identifier)
            }
            view.setup()
            return view
        }
        return MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
    }
}
