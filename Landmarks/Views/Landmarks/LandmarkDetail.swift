//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Yohan on 2024-12-22.
//

import SwiftUI

struct LandmarkDetail: View {
    // observable enviornment object
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)


            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)


            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)


                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)


                Divider()


                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    LandmarkDetail(landmark: landmarks[0])
}
