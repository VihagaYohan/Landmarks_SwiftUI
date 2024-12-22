//
//  CircleImage.swift
//  Landmarks
//
//  Created by Yohan on 2024-12-21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
