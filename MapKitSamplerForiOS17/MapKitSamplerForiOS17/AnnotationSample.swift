//
//  AnnotationSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/13.
//

import SwiftUI
import MapKit

struct AnnotationSample: View {
    var body: some View {
        Map() {
            Annotation("東京駅", coordinate: .tokyoStation, anchor: UnitPoint(x: 2, y: -2)) {
                Image(systemName: "tram")
                    .foregroundStyle(.yellow)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(.blue))
            }
        }
    }
}

#Preview {
    AnnotationSample()
}
