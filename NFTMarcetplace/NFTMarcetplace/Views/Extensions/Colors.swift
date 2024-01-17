//
//  Colors.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 10.01.2024.
//

import SwiftUI

extension EllipticalGradient {
  static var background2 = EllipticalGradient(
    stops: [
      Gradient.Stop(color: Color(red: 0.34, green: 0.26, blue: 0.46), location: 0.00),
      Gradient.Stop(color: Color(red: 0.26, green: 0.18, blue: 0.32), location: 1.00)
    ],
    center: UnitPoint(x: 0.5, y: 0.5)
  )
}

extension LinearGradient {
  static var welcomeBackground = LinearGradient(
    stops: [
      Gradient.Stop(color: Color(red: 0.36, green: 0.38, blue: 0.61), location: 0.00),
      Gradient.Stop(color: Color(red: 0.46, green: 0.49, blue: 0.7), location: 1.00)
    ],
    startPoint: UnitPoint(x: 0.5, y: 0),
    endPoint: UnitPoint(x: 0.85, y: 0.09)
  )
}

extension Color {
  enum General {
    static let textSecondaryColor = Color("TextSecondaryColor")
  }

  enum CollectionsCard {
    static let cardBorder = Color("CardBorder")
    static let cardBackground = Color("CardBackground")
  }
}
