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

extension Color {
  enum CollectionsCard {
    static let cardBorder = Color("CardBorder")
    static let cardBackground = Color("CardBackground")
  }
}
