//
//  LookAroundPreviewSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/17.
//

import SwiftUI
import MapKit

struct LookAroundPreviewSample: View {
    @State private var selection: UUID?
    @State private var isOnlyPreview = true

    let stations = [
        StationPoint(name: "Tokyo Station", coordinate: .tokyoStationStreet),
        StationPoint(name: "Nagoya Station", coordinate: .nagoyaStation),
        StationPoint(name: "Osaka Station", coordinate: .osakaStation),
        StationPoint(name: "Fukuoka Station", coordinate: .hakataStation)]

    var body: some View {
        VStack {
            Toggle("Only PreView", isOn: $isOnlyPreview)
                .padding([.top, .horizontal])
            // Preview only
            if isOnlyPreview {
                List {
                    ForEach(stations) { location in
                        LocationPreview(
                            stationPoint: .constant(location))
                        .frame(height: 320)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .listStyle(.inset)
            } else {
                // MapView
                Map(selection: $selection) {
                    ForEach(stations) { location in
                        Marker(coordinate: location.coordinate) {
                            Text(location.name)
                            Image(systemName: "tram.fill")
                        }
                        .tint(.blue)
                    }
                }
                .safeAreaInset(edge: .bottom) {
                    if let selection {
                        if let item = stations.first(where: { $0.id == selection }) {
                            LocationPreview(
                                stationPoint: .constant(item))
                            .frame(height: 128)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding()
                            .background(.thinMaterial)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LookAroundPreviewSample()
}
