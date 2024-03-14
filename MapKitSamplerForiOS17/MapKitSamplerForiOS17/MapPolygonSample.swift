//
//  MapPolygonSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/13.
//

import SwiftUI
import MapKit

struct MapPolygonSample: View {
    var body: some View {
        Map() {
            MapPolygon(coordinates: CLLocationCoordinate2D.tokyoStationArea)
                .foregroundStyle(.orange.opacity(0.6))
        }
    }
}

#Preview {
    MapPolygonSample()
}
