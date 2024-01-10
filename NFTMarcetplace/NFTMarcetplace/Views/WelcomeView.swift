//
//  WelcomeView.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 08.12.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("WelcomeBackground", bundle: nil)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack(alignment: .leading) {
                Spacer()

                Text("Welcome to \nNFT Marketplace")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 1, x: 0, y: 4)
                    .shadow(color: .black, radius: 1)

                Spacer()

                WelcomeMessageFooter()
            }
            .padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct WelcomeMessageFooter: View {
    var body: some View {
            VStack(alignment: .center) {
                Text("Explore and Mint NFTs")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .kerning(0.35)
                    .multilineTextAlignment(.center)

                Text(" You can buy and sell the NFTs of the best artists in the world.")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.center)

                Button("Get started now") {

                }
                .buttonStyle(WelcomeButtonStyle())
            }
            .padding(30)
            .background(.ultraThinMaterial.opacity(0.5), in: RoundedRectangle(cornerRadius: 30))
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .inset(by: 0.5)
                    .stroke(.white.opacity(0.3), lineWidth: 1)

        )
    }
}
