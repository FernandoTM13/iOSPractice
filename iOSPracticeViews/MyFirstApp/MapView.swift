//
//  MapView.swift
//  MyFirstApp
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: -9.189967, longitude: -75.015152)
        
        let spans = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
    
        let region = MKCoordinateRegion(center: coordinate, span: spans)
        
        uiView.setRegion(region, animated: true)

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
