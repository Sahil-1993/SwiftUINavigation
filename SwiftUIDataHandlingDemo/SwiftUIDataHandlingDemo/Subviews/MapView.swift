//
//  SwiftUIView.swift
//  SwiftUIDataHandlingDemo
//
//  Created by Sahil Arora on 2022-05-20.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinates:CLLocationCoordinate2D
    
    
    func makeUIView(context: Context) ->  MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let region = MKCoordinateRegion(center: coordinates, span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0))
        uiView.setRegion(region, animated: true)
    }
}
