//
//  MapControlsSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/17.
//

import SwiftUI
import MapKit

struct MapControlsSample: View {
    let locationManager = LocationManager()
    
    var body: some View {
        Map() {
            UserAnnotation()
        }
        .mapControls {
            MapCompass()
                .mapControlVisibility(.visible)
            MapPitchToggle()
                .mapControlVisibility(.visible)
            MapScaleView()
                .mapControlVisibility(.hidden)
            MapUserLocationButton()
                .mapControlVisibility(.visible)
        }
        .onAppear {
            locationManager.requestLocationAuthorization()
        }
    }
}

#Preview {
    MapControlsSample()
}
