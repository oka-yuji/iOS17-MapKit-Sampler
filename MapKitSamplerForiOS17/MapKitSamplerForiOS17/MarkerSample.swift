//
//  MarkerSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/14.
//

import SwiftUI
import MapKit

struct MarkerSample: View {
    var body: some View {
        Map() {
            Marker(coordinate: .tokyoStation) {
                Text("東京駅")
                Image(systemName: "tram.fill")
            }
            .tint(.blue)
        }
    }
}

#Preview {
    MarkerSample()
}
