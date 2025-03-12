//
//  ContentView.swift
//  Oddsai
//
//  Created by Nicolai Garder Hansen on 12/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var navigateToHome = false

    var body: some View {
        NavigationView {
            ZStack {
                // Background gradient
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                // Hidden NavigationLink triggered by tap gesture
                NavigationLink(destination: HomePageView(), isActive: $navigateToHome) {
                    EmptyView()
                }

                // Main content
                VStack(spacing: 20) {
                    Text("Oddsai")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.white)
                    Text("Tap anywhere to continue")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                .padding()
            }
            .onTapGesture {
                navigateToHome = true
            }
        }
    }
}

struct HomePageView: View {
    var body: some View {
        Text("Home Page")
            .font(.largeTitle)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
