//
//  LandmarkRow.swift
//  SwiftUIDataHandlingDemo
//
//  Created by Sahil Arora on 2022-05-22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    
    var body: some View {
        
        HStack{
            landmark.image.resizable().frame(width: 50, height: 50, alignment: .leading)
                .clipShape(Circle())
            Text(landmark.name)
            Spacer()
        }.padding()
      
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[1])
    }
}
