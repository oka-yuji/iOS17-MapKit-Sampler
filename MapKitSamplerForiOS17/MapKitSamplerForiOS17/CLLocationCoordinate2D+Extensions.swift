//
//  CLLocationCoordinate2D+Extensions.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/13.
//

import MapKit

extension CLLocationCoordinate2D {
    static let tokyoStation = CLLocationCoordinate2D(latitude: 35.681271031625556, longitude: 139.76710334029735)

    static let shinagawaStation = CLLocationCoordinate2D(latitude: 35.6284756, longitude: 139.7361848)

    static let tokyoStationStreet = CLLocationCoordinate2D(latitude: 35.679981237178694, longitude: 139.76897015768628)

    static let nagoyaStation = CLLocationCoordinate2D(latitude: 35.171046524929345, longitude: 136.88292091775608)

    static let osakaStation = CLLocationCoordinate2D(latitude: 34.70257357671039, longitude: 135.4959720556559)

    static let hakataStation = CLLocationCoordinate2D(latitude: 33.590225024456885, longitude: 130.42114956628524)

    static let tokyoStationArea = [
        CLLocationCoordinate2D(latitude: 35.681901, longitude: 139.76861968750546),
        CLLocationCoordinate2D(latitude: 35.682405, longitude: 139.76627114508926),
        CLLocationCoordinate2D(latitude: 35.680667, longitude: 139.76587695236373),
        CLLocationCoordinate2D(latitude: 35.680037, longitude: 139.76785865385352)
    ]

    static let tokyoStationToNihonbashiStation = [
        CLLocationCoordinate2D(latitude: 35.680360872435834, longitude: 139.76895627465805),
        CLLocationCoordinate2D(latitude: 35.68356491886786, longitude: 139.77095859539386),
        CLLocationCoordinate2D(latitude: 35.68204152197238, longitude: 139.77490316724334)
    ]
}
