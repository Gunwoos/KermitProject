//
//  MapViewController.swift
//  Kermit
//
//  Created by 임건우 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//


import MapKit
import UIKit
import SafariServices

final class TravelLocationInfo: MKPointAnnotation{
    var phoneNumber : String!
    var url : URL!
}

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    private let travelLocationAnnotationID = "travelLocationAnnotationViewIdentifier"
    
    var travelLocationImage = UIImage()
    var checkKermitLocation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTravelLocationAnnotations()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
  
    func addTravelLocationAnnotations(){
        switch checkKermitLocation {
        case 0:
            let kermit = KermitData.KermitSeoul()
            
            for i in 0...kermit.tripUrlList.count-1{
                let newLocation = TravelLocationInfo()
                newLocation.title = kermit.tripTitle[i]
                newLocation.coordinate = CLLocationCoordinate2DMake(kermit.tripLatitude[i], kermit.tripLongitude[i])
                newLocation.phoneNumber = kermit.tripTitle[i]
                newLocation.url = URL(string: kermit.tripUrlList[i])

                mapView.addAnnotation(newLocation)
            }
        case 1:
            let kermit = KermitData.KermitGangWonDo()
            
            for i in 0...kermit.tripUrlList.count-1{
                let newLocation = TravelLocationInfo()
                newLocation.title = kermit.tripTitle[i]
                newLocation.coordinate = CLLocationCoordinate2DMake(kermit.tripLatitude[i], kermit.tripLongitude[i])
                newLocation.phoneNumber = ""
                newLocation.url = URL(string: kermit.tripUrlList[i])

                mapView.addAnnotation(newLocation)
            }
        case 2:
            let kermit = KermitData.KermitGyeonggido()
            
            for i in 0...kermit.tripUrlList.count-1{
                let newLocation = TravelLocationInfo()
                newLocation.title = kermit.tripTitle[i]
                newLocation.coordinate = CLLocationCoordinate2DMake(kermit.tripLatitude[i], kermit.tripLongitude[i])
                newLocation.phoneNumber = ""
                newLocation.url = URL(string: kermit.tripUrlList[i])

                mapView.addAnnotation(newLocation)
            }
        case 3:
            let kermit = KermitData.KermitBusan()
            
            for i in 0...kermit.tripUrlList.count-1{
                let newLocation = TravelLocationInfo()
                newLocation.title = kermit.tripTitle[i]
                newLocation.coordinate = CLLocationCoordinate2DMake(kermit.tripLatitude[i], kermit.tripLongitude[i])
                newLocation.phoneNumber = ""
                newLocation.url = URL(string: kermit.tripUrlList[i])

                mapView.addAnnotation(newLocation)
            }
        case 4:
            let kermit = KermitData.KermitGwangju()
            
            for i in 0...kermit.tripUrlList.count-1{
                let newLocation = TravelLocationInfo()
                newLocation.title = kermit.tripTitle[i]
                newLocation.coordinate = CLLocationCoordinate2DMake(kermit.tripLatitude[i], kermit.tripLongitude[i])
                newLocation.phoneNumber = ""
                newLocation.url = URL(string: kermit.tripUrlList[i])

                mapView.addAnnotation(newLocation)
            }
        case 5:
            let kermit = KermitData.KermitJeju()
            
            for i in 0...kermit.tripUrlList.count-1{
                let newLocation = TravelLocationInfo()
                newLocation.title = kermit.tripTitle[i]
                newLocation.coordinate = CLLocationCoordinate2DMake(kermit.tripLatitude[i], kermit.tripLongitude[i])
                newLocation.phoneNumber = ""
                newLocation.url = URL(string: kermit.tripUrlList[i])

                mapView.addAnnotation(newLocation)
            }
        default:
            break
        }
    }

}
extension MapViewController: MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is TravelLocationInfo{
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: travelLocationAnnotationID)
            if annotationView == nil{
                annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: travelLocationAnnotationID)
            }
            else{
                annotationView?.annotation = annotation
            }
            
            annotationView!.image = travelLocationImage
            annotationView!.frame.size = CGSize(width: 30, height: 30)
            
            annotationView!.canShowCallout = true
            
            let addButton = UIButton(type: UIButtonType.contactAdd)
            addButton.tag = 0
            annotationView!.leftCalloutAccessoryView = addButton
            
            let infoButton = UIButton(type: UIButtonType.infoLight)
            infoButton.tag = 1
            annotationView!.rightCalloutAccessoryView = infoButton
            
            return annotationView
        }
        return MKAnnotationView(frame: .zero)
    }
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let travel = view.annotation as? TravelLocationInfo else { return }
        
        if control.tag == 0{
            
        }
        if control.tag == 1{
            let safariVC = SFSafariViewController(url: travel.url)
            present(safariVC, animated: true)
        }
    }
}
