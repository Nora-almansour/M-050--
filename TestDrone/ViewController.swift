//
//  ViewController.swift
//  TestDrone
//
//  Created by Nora al-mansour on 11/19/1439 AH.
//  Copyright © 1439 Nora al-mansour. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    // Used to start getting the Drone location
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // For use when the Drone is starting :
        locationManager.requestAlwaysAuthorization()
        
        // If location services is enabled get the users location
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest // You can change the locaiton accuary here.
            locationManager.startUpdatingLocation()
        }
    }
    // Print out the location , Case and Orgnization:
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let DroneLocation = locations.first {
            print("Area Location:'",DroneLocation.coordinate ,"'", "Case:XXXX" , "Orgnization:XXX" )
        }
    }
}
