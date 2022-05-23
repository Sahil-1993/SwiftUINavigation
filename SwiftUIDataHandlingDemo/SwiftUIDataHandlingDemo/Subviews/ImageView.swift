//
//  ImageViewswift.swift
//  SwiftUIDataHandlingDemo
//
//  Created by Sahil Arora on 2022-05-20.
//

import SwiftUI

struct ImageView: View {
    @State var landmark:Landmark
    var body: some View {
        Image(landmark.imageName)
            .clipShape(Circle())
            .overlay(Circle().stroke(.gray, lineWidth: 2.0))
            .shadow(radius: 5.0)
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(landmark: landmarks[0])
    }
}
