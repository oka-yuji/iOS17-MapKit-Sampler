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
            Annotation(coordinate: .tokyoStation, anchor: UnitPoint(x: 2, y: -2)) {
                Image(systemName: "tram.fill")
                    .foregroundStyle(.yellow)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.blue))
            } label: {
                VStack {
                    // title
                    Text("東京駅")
                        .bold()
                        .foregroundColor(.white)
                        .padding([.top, .horizontal], 5)
                    // subtitle
                    Text("メインターミナル")
                        .foregroundColor(.white)
                        .padding([.bottom, .horizontal], 5)
                }
                .background(Color.black.opacity(0.7))
                .cornerRadius(5)
            }
            .annotationTitles(.hidden)
            .annotationSubtitles(.visible)
        }
    }
}

#Preview {
    AnnotationSample()
}
