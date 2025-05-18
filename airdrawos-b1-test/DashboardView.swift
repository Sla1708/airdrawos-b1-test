// DashboardView.swift
// FirstTeamApp
//
// Just a ZStack with your image and a “Hello” text overlay.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ZStack {
            Image("HelloImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            Text("Hello")
                .font(.system(size: 64, weight: .bold))
                .foregroundColor(.white)
                .shadow(radius: 4)
        }
    }
}

#Preview {
    DashboardView()
}