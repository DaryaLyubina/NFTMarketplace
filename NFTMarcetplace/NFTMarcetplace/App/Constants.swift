//
//  Constants.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 10.01.2024.
//

import Foundation
import SwiftUI

enum Constants {
  enum CollectionsCard {
    static var spacing: CGFloat = 10
    static var cardCornerRadius: CGFloat = 30
    static var cardStrokeWidth: CGFloat = 1

    // card's image
    static var imageSize: CGFloat = 155.0
    static var imageCornerRadius: CGFloat = 22

    // card's image shadow
    static var imageShadowX: CGFloat = 0
    static var imageShadowY: CGFloat = 4
    static var imageShadowRadius: CGFloat = 2
    static var imageShadowColor: Color = .black.opacity(0.25)
  }
}
