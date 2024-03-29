//
//  MapStyleSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/11.
//

import SwiftUI
import MapKit

struct MapStyleSample: View {
    var body: some View {
        Map()
            .mapStyle(.imagery(elevation: .realistic))
    }
}

#Preview {
    MapStyleSample()
}
