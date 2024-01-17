//
//  ButtonStyles.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 07.01.2024.
//

import SwiftUI

struct WelcomeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 20)
            .padding(.vertical, 14)
            .background(configuration.isPressed ? Color.welcomeButton.opacity(0.5) : Color.welcomeButton)
            .clipShape(Capsule())
            .overlay {
                Capsule()
                    .strokeBorder(lineWidth: 1)
                    .foregroundColor(.white.opacity(0.5))
            }
            .foregroundColor(.white)
            .font(.headline)
            .kerning(-0.41)
            .fontWeight(.semibold)
    }
}

extension Color {
    static let welcomeButton = Color("WelcomeButtonColor")
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Image("WelcomeBackground", bundle: nil)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            Button("Example") {}
                .buttonStyle(WelcomeButtonStyle())
        }

    }
}
