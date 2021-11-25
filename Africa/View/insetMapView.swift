//
//  insetMapView.swift
//  Africa
//
//  Created by SoePaing on 18/09/2021.
//

import SwiftUI
import MapKit

struct insetMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(
                                                    latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    // MARK: BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }//: HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }//: NAVIGATION
                .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct insetMapView_Previews: PreviewProvider {
    static var previews: some View {
        insetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
