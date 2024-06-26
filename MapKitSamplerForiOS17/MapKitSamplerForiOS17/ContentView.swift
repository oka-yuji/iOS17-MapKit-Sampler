//
//  ContentView.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("MapStyle Sample") {
                    MapStyleSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("Annotation Sample") {
                    AnnotationSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("MapCircle Sample") {
                    MapCircleSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("MapPolygon Sample") {
                    MapPolygonSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("MapPolyline Sample") {
                    MapPolylineSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("Marker Sample") {
                    MarkerSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("UserAnnotation Sample") {
                    UserAnnotationSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("MapControls Sample") {
                    MapControlsSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("LookAroundPreview Sample") {
                    LookAroundPreviewSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("MapFeature Sample") {
                    MapFeatureSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("MapCamera Sample") {
                    MapCameraSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("MapReader Sample") {
                    MapReaderSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("LocalSearch Sample") {
                    LocalSearchSample()
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
            .navigationTitle("MapKitSampler")
        }
    }
}

#Preview {
    ContentView()
}
