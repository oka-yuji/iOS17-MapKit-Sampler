//
//  MapCameraSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/28.
//

import SwiftUI
import MapKit

struct MapCameraSample: View {
    @State private var cameraPosition: MapCameraPosition = .camera(MapCamera(centerCoordinate: .tokyoStation, distance: 100000000))
    @State private var userCameraPosition: MapCameraPosition = .userLocation(followsHeading: true,
                                                                             fallback: .camera(MapCamera(centerCoordinate: .tokyoStation,
                                                                                                         distance: 5000,
                                                                                                         pitch: 60)))
    var body: some View {
        Map(position: $userCameraPosition) {
            UserAnnotation()
        }
    }
}

#Preview {
    MapCameraSample()
}
