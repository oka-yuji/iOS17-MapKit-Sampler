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
                    MapStyleSample()
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
