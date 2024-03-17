//
//  LocationManager.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/17.
//

import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()

    override init() {
        super.init()
        locationManager.delegate = self
    }

    func requestLocationAuthorization() {
        locationManager.requestWhenInUseAuthorization()
    }
}
