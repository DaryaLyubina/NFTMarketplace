//
//  CardViewComponents.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 10.01.2024.
//

import SwiftUI

struct CollectionsCardView: View {
  var imageName: String
  var title: String

  var body: some View {
    VStack(spacing: Constants.CollectionsCard.spacing) {
      CardImageView(imageName: imageName)
        .shadow(color: Constants.CollectionsCard.imageShadowColor,
                radius: Constants.CollectionsCard.imageShadowRadius,
                x: Constants.CollectionsCard.imageShadowX,
                y: Constants.CollectionsCard.imageShadowY)

      HStack {
        CardTitleView(text: title)
      }
    }
    .padding()
    .background(Color.CollectionsCard.cardBackground)
    .clipShape(
      RoundedRectangle(cornerRadius: Constants.CollectionsCard.cardCornerRadius)
    )
    .overlay(
      RoundedRectangle(cornerRadius: Constants.CollectionsCard.cardCornerRadius)
        .stroke(lineWidth: Constants.CollectionsCard.cardStrokeWidth)
        .foregroundColor(Color.CollectionsCard.cardBorder)
    )
  }
}

struct CardTitleView: View {
  var text: String

  var body: some View {
    Text(text)
      .font(.footnote)
      .fontWeight(.semibold)
      .foregroundColor(.white)
  }
}

struct CardImageView: View {
  var imageName: String

  var body: some View {
    Image(imageName)
      .resizable()
      .scaledToFill()
      .frame(width: Constants.CollectionsCard.imageSize,
             height: Constants.CollectionsCard.imageSize)
      .cornerRadius(Constants.CollectionsCard.imageCornerRadius)
      .overlay {
        RoundedRectangle(cornerRadius: Constants.CollectionsCard.imageCornerRadius)
          .stroke(lineWidth: Constants.CollectionsCard.cardStrokeWidth)
      }
  }
}

struct CollectionsCardView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      EllipticalGradient
        .background2
        .ignoresSafeArea()

        CollectionsCardView(imageName: "CollectionsCardViewExample", title: "3D Art")
    }
  }
}
