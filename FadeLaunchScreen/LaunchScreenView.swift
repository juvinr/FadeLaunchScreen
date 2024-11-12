//
//  LaunchScreenView.swift
//  FadeLaunchScreen
//
//  Created by Juvin Rodrigues on 11/12/24.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            Text("Hello!")
                .font(.system(size: 90))
                .fontWeight(.medium)
                .fontDesign(.rounded)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    LaunchScreenView()
}
