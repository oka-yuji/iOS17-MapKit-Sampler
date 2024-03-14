//
//  CLLocationCoordinate2D+Extensions.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/13.
//

import MapKit

extension CLLocationCoordinate2D {
    static let tokyoStation = CLLocationCoordinate2D(latitude: 35.681236,
                                                longitude: 139.767125)

    static let tokyoStationArea = [
        CLLocationCoordinate2D(latitude: 35.681901, longitude: 139.76861968750546),
        CLLocationCoordinate2D(latitude: 35.682405, longitude: 139.76627114508926),
        CLLocationCoordinate2D(latitude: 35.680667, longitude: 139.76587695236373),
        CLLocationCoordinate2D(latitude: 35.680037, longitude: 139.76785865385352)
    ]

    static let tokyoStationTonihonbashiStation = [
        CLLocationCoordinate2D(latitude: 35.680360872435834, longitude: 139.76895627465805),
        CLLocationCoordinate2D(latitude: 35.68356491886786, longitude: 139.77095859539386),
        CLLocationCoordinate2D(latitude: 35.68204152197238, longitude: 139.77490316724334)
    ]
}
