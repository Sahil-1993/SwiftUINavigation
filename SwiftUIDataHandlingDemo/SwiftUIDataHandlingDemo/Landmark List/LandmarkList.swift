//
//  LandmarkList.swift
//  SwiftUIDataHandlingDemo
//
//  Created by Sahil Arora on 2022-05-22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks, rowContent: { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark), label: {
                    LandmarkRow(landmark: landmark)
                })
               
            })
            .navigationTitle("National Parks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
