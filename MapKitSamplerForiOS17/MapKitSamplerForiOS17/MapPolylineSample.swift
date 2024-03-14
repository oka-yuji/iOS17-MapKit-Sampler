//
//  MapPolylineSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/14.
//

import SwiftUI
import MapKit

struct MapPolylineSample: View {
    var body: some View {
        Map() {
            MapPolyline(coordinates: CLLocationCoordinate2D.tokyoStationTonihonbashiStation,
                        contourStyle: .straight)
            .stroke(.blue, lineWidth: 8)
        }
    }
}

#Preview {
    MapPolylineSample()
}
