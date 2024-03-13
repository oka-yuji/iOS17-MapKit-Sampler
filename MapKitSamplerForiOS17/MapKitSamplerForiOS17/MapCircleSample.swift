//
//  MapCircleSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/13.
//

import SwiftUI
import MapKit

struct MapCircleSample: View {
    var body: some View {
        Map() {
            MapCircle(center: .tokyoStation, radius: 160)
                .foregroundStyle(.red.opacity(0.6))
        }
    }
}

#Preview {
    MapCircleSample()
}
