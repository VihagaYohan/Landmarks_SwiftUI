//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Yohan on 2024-12-23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("Toggle favorite", systemImage: isSet ? "star.fill": "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow: .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
