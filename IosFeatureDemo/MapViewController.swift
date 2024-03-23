//
//  MapViewController.swift
//  IosFeatureDemo
//
//  Created by shoya on 2024/03/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var segmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var region = MKCoordinateRegion()
        
        // Mapの初期表示位置を指定
        region.center = CLLocationCoordinate2DMake(35.658611, 139.745556)

        // 緯度経度の表示範囲を指定
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02

        // mapViewに範囲を指定
        mapView.setRegion(region, animated: false)

        // Map種別を指定
        mapView.mapType = .standard
    }
    
    @IBAction func segmentChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            mapView.mapType = .hybrid
        }
    }

}
