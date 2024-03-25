//
//  LocationPreview.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/25.
//

import SwiftUI
import MapKit

struct LocationPreview: View {
    @State private var scene: MKLookAroundScene?
    @Binding var stationPoint: StationPoint

    var body: some View {
        LookAroundPreview(initialScene: scene,
                          allowsNavigation: true,
                          showsRoadLabels: true,
                          pointsOfInterest: .all,
                          badgePosition: .topLeading)
        .overlay(alignment: .bottomTrailing) {
            HStack {
                Image(systemName: "tram.fill")
                Text(stationPoint.name)
            }
            .font(.caption)
            .foregroundStyle(.white)
            .padding(18)
        }
        .task {
            await loadLookAroundScene()
        }
        .onChange(of: stationPoint) {
            Task {
                await loadLookAroundScene()
            }
        }
    }
    func loadLookAroundScene() async {
        scene = nil
        do {
            let request = MKLookAroundSceneRequest(coordinate: stationPoint.coordinate)
            scene = try await request.scene
        } catch {
            print(error)
        }
    }
}


#Preview {
    LocationPreview(stationPoint: .constant(StationPoint(name: "Tokyo Station", coordinate: .tokyoStationStreet)))
}
