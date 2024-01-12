//
//  CustomModifiers.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 10.01.2024.
//

import SwiftUI

extension View {
  func blackShadow() -> some View {
    return self
      .shadow(color: Constants.CollectionsCard.imageShadowColor,
              radius: Constants.CollectionsCard.imageShadowRadius,
              x: Constants.CollectionsCard.imageShadowX,
              y: Constants.CollectionsCard.imageShadowY)
  }

  func blackRoundedBorder(cornerRadius: CGFloat = Constants.CollectionsCard.imageCornerRadius,
                          lineWidth: CGFloat = Constants.CollectionsCard.cardStrokeWidth) -> some View {
    return self
      .overlay {
        RoundedRectangle(cornerRadius: cornerRadius)
          .stroke(lineWidth: lineWidth)
      }
  }

  func cardStyle() -> some View {
    return self
      .padding()
      .background(Color.CollectionsCard.cardBackground)
      .clipShape(
        RoundedRectangle(cornerRadius: Constants.CollectionsCard.cardCornerRadius)
      )
      .styledBorder()
  }

  func styledBorder() -> some View {
    return self
      .overlay(
        RoundedRectangle(cornerRadius: Constants.CollectionsCard.cardCornerRadius)
          .inset(by: Constants.CollectionsCard.cardStrokeWidth / 2)
          .stroke(lineWidth: Constants.CollectionsCard.cardStrokeWidth)
          .foregroundColor(Color.CollectionsCard.cardBorder)
      )
  }
}
