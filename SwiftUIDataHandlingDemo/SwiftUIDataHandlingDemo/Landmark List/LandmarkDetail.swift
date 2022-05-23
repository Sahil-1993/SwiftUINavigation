//
//  LandmarkDetail.swift
//  SwiftUIDataHandlingDemo
//
//  Created by Sahil Arora on 2022-05-22.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    
    var landmark:Landmark
    
    var body: some View {
            VStack{
                MapView(coordinates: landmark.locationCoordinate).edgesIgnoringSafeArea(.top)
                    .frame(height: UIScreen.main.bounds.height/2)
                // Landmark Image
                ImageView(landmark: landmark).offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading){
                    Text(landmark.name).font(.title)
                    //Description
                    HStack{
                        Text(landmark.park).font(.subheadline)
                        Spacer()
                        Text(landmark.state).font(.subheadline)
                    }
                }.padding()
                //Spacer
                Spacer()
            }
            .navigationTitle(landmark.name)
            .font(.headline)
            .navigationBarTitleDisplayMode(.inline)
        
       
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
