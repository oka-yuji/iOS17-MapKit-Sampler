//
//  StationPoint.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/25.
//

import MapKit

struct StationPoint: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D

    static func == (lhs: StationPoint, rhs: StationPoint) -> Bool {
        return lhs.id == rhs.id
    }
}
