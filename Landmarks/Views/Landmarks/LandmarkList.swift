//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yohan on 2024-12-22.
//

import SwiftUI

struct LandmarkList: View {
    // observable
    @Environment(ModelData.self) var modelData
    // states
    @State private var showFavoritesOnly: Bool = true
    
    var filterdLandmarks: [Landmark]{
        modelData.landmarks.filter{landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle("Show favorites only", isOn: $showFavoritesOnly)
                
                ForEach(filterdLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filterdLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
