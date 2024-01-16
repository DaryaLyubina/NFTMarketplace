//
//  ArtCard.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 07.01.2024.
//

import SwiftUI

struct CardView: View {
  var title: String
  var imageName: String

  var body: some View {
    ZStack(alignment: .bottom) {
      Image(imageName)
        .resizable()
        .scaledToFill()
        .frame(width: 280, height: 186)

      Rectangle()
        .frame(width: 300, height: 100)
        .background(
          .ultraThinMaterial,
          in: RoundedRectangle(cornerRadius: 8, style: .continuous)
        )
        .padding([.leading, .bottom, .trailing], -30.0)
        .blur(radius: 15)

      Text(title.capitalized)
        .font(.title2)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .bold()
        .padding()
        .kerning(0.35)
        .font(.title)
    }
    .clipShape(RoundedRectangle(cornerRadius: 30))
    .styledBorder()
  }
}

struct ArtCard_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      EllipticalGradient
        .background2
        .ignoresSafeArea()

      VStack(spacing: 10) {
        CardView(title: "Title", imageName: "example1")
      }
    }
  }
}
