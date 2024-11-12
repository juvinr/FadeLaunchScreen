//
//  ContentView.swift
//  FadeLaunchScreen
//
//  Created by Juvin Rodrigues on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showLaunchScreen: Bool = true
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .opacity(showLaunchScreen ? 0 : 1)
            
            if showLaunchScreen {
                LaunchScreenView()
                    .opacity(showLaunchScreen ? 1 : 0)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation(.easeInOut(duration: 2)) {
                    showLaunchScreen = false
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
