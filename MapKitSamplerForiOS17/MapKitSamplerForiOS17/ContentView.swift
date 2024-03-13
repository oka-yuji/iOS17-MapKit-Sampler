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
                    MapStyle()
                        .navigationBarTitleDisplayMode(.inline)
                }
                NavigationLink("Annotation Sample") {
                    MapStyle()
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
