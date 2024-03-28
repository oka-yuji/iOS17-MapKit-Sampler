//
//  MapReaderSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/28.
//

import SwiftUI
import MapKit

struct MapReaderSample: View {
    @State private var coordinate: CLLocationCoordinate2D = .init(latitude: 0.00,
                                                                  longitude: 0.00)
    var body: some View {
        ZStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("latitude: \(coordinate.latitude)")
                    Text("longitude: \(coordinate.longitude)")
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(.secondary)
                )
                Spacer()
            }
            .padding()
            .zIndex(100)
            MapReader { proxy in
                Map()
                    .onTapGesture { position in
                        if let selectedCoordinate = proxy.convert(position, from: .local) {
                            coordinate = selectedCoordinate
                        }
                    }
            }
        }
    }
}

#Preview {
    MapReaderSample()
}
