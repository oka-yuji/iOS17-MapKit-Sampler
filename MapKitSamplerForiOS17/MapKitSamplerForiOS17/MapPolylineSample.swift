//
//  MapPolylineSample.swift
//  MapKitSamplerForiOS17
//
//  Created by yuji on 2024/03/14.
//

import SwiftUI
import MapKit

struct MapPolylineSample: View {
    @State private var route: MKRoute?
    @State private var isShowingRoutes = true
    var body: some View {
        VStack {
            Toggle("View with routes", isOn: $isShowingRoutes)
                .padding([.horizontal, .top])
            if isShowingRoutes {
                Map() {
                    if let routePolyline = route?.polyline {
                        MapPolyline(routePolyline)
                            .stroke(.blue, lineWidth: 8)
                    }
                }
                .safeAreaInset(edge: .bottom) {
                    HStack(spacing: 32) {
                        Spacer()
                        Button {
                            Task {
                               await calculateRoute(transportType: .walking)
                            }
                        } label: {
                            Image(systemName: "figure.walk")
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(.white)
                                )
                                .padding(.top, 8)
                        }

                        Button {
                            Task {
                               await calculateRoute(transportType: .automobile)
                            }
                        } label: {
                            Image(systemName: "car.fill")
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(.white)
                                )
                                .padding(.top, 8)
                        }

                        Button {
                            Task {
                               await calculateRoute(transportType: .any)
                            }
                        } label: {
                            Image(systemName: "bicycle")
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(.white)
                                )
                                .padding(.top, 8)
                        }

                        Button {
                            Task {
                               await calculateRoute(transportType: .transit)
                            }
                        } label: {
                            Image(systemName: "tram.fill")
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(.white)
                                )
                                .padding(.top, 8)
                        }
                        Spacer()
                    }
                    .background(.thinMaterial)
                }
            } else {
                Map {
                    MapPolyline(coordinates: CLLocationCoordinate2D.tokyoStationToNihonbashiStation,
                                contourStyle: .straight)
                    .stroke(.blue, lineWidth: 8)
                }
            }
        }
        .task {
            await calculateRoute(transportType: .walking)
        }
    }

    func calculateRoute(transportType: MKDirectionsTransportType) async {
        let sourceCoordinate = CLLocationCoordinate2D.tokyoStation
        let destinationCoordinate = CLLocationCoordinate2D.shinagawaStation

        let sourcePlacemark = MKPlacemark(coordinate: sourceCoordinate)
        let destinationPlacemark = MKPlacemark(coordinate: destinationCoordinate)

        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: sourcePlacemark)
        request.destination = MKMapItem(placemark: destinationPlacemark)
        request.transportType = transportType
        if request.transportType == .transit {
            // transit is Only supported for ETA calculations
            let directions = MKDirections(request: request)
            do {
                let etaResponse = try await directions.calculateETA()
                let etaSeconds = etaResponse.expectedTravelTime
                let etaMinutes = Int(etaSeconds / 60)
                print("ETA: \(etaMinutes)")
            } catch {
                print("ETA Error: \(error.localizedDescription)")
            }
        } else {
            do {
                let directions = MKDirections(request: request)
                let response = try await directions.calculate()
                let routes = response.routes
                route = routes.first
                print(routes)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}


#Preview {
    MapPolylineSample()
}
