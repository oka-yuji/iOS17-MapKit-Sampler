//
//  UserAnnotationSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/14.
//

import SwiftUI
import MapKit

struct UserAnnotationSample: View {
    let locationManager = LocationManager()

    var body: some View {
        Map(interactionModes: .all) {
            UserAnnotation(anchor: .center) { userLocation in
                VStack {
                    Image(systemName: "arrow.up")
                        .rotationEffect(.degrees(userLocation.heading?.magneticHeading ?? 0))
                        .foregroundColor(.blue)
                    Circle()
                        .foregroundStyle(.blue)
                        .padding(2)
                        .background(
                            Circle()
                                .foregroundStyle(.white)
                        )
                    Text("me")
                }
            }
        }
        .mapControls {
            MapUserLocationButton()
        }
        .onAppear {
            locationManager.requestLocationAuthorization()
        }
    }
}

#Preview {
    UserAnnotationSample()
}
