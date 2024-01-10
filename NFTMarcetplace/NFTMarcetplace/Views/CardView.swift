//
//  ArtCard.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 07.01.2024.
//

import SwiftUI

enum CardType {
    case art, music, virtualWorlds

    var imageName: String {
        switch self {
        case .art:
            return "ArtCard"
        case .music:
            return "MusicCard"
        case .virtualWorlds:
            return "VirtualWorldsCard"
        }
    }

    var title: String {
        switch self {
        case .art:
            return "art"
        case .music:
            return "music"
        case .virtualWorlds:
            return "virtual worlds"
        }
    }
}

struct CardView: View {
    var cardType: CardType

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(cardType.imageName)
                .frame(width: 280, height: 186)
            .clipShape(RoundedRectangle(cornerRadius: 30))

            Text(cardType.title.capitalized)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .bold()
                .padding()
                .kerning(0.35)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ArtCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("HomeBackground")
                .ignoresSafeArea()

            VStack(spacing: 10) {
                CardView(cardType: .music)
                CardView(cardType: .art)
                CardView(cardType: .virtualWorlds)
            }
        }
    }
}
