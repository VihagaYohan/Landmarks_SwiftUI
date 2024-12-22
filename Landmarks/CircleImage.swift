//
//  CircleImage.swift
//  Landmarks
//
//  Created by Yohan on 2024-12-21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
    }
}

#Preview {
    CircleImage()
}
