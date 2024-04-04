//
//  MapFeatureSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/25.
//

import SwiftUI
import MapKit

struct MapFeatureSample: View {
    @State private var selectedFeature: MapFeature?
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(center: .tokyoStation, span: .init(latitudeDelta: 0.01, longitudeDelta: 0.01)))
    var body: some View {
        Map(initialPosition: cameraPosition, selection: $selectedFeature)
            .mapFeatureSelectionContent { feature in
                Marker(coordinate: feature.coordinate) {
                    HStack {
                        // Only either Text or Image is displayed.
                        Text(feature.title ?? "")
                        // feature.image
                    }
                    .onAppear {
                        print(feature.image)
                        print(feature.title)
                        print(feature.kind)
                        print(feature.coordinate)
                        print(feature.pointOfInterestCategory)
                        print(feature.backgroundColor)

                    }
                }
                .tint(feature.backgroundColor ?? .clear)
            }
    }
}

#Preview {
    MapFeatureSample()
}
