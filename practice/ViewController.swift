//
//  ViewController.swift
//  practice
//
//  Created by user185614 on 1/23/21.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mkView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let  tap = UITapGestureRecognizer(target: self, action: #selector(setPin(touch:)))
        mkView.addGestureRecognizer(tap)
        let x = mkView.annotations(in: mkView)
    
    }
    @objc func setPin(touch:UITapGestureRecognizer){
        let point = touch.location(in: mkView)
        let coordinates = mkView.convert(point, toCoordinateFrom: mkView)
        let pin = MKPointAnnotation()
        pin.title = "Hellloooo Girlzz"
        pin.coordinate = coordinates
        mkView.addAnnotation(pin)
    }
    

}

