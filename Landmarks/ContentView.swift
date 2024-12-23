//
//  ContentView.swift
//  Landmarks
//
//  Created by Yohan on 2024-12-21.
//

import SwiftUI

struct ContentView: View {
    @State private var modelData = ModelData()
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
