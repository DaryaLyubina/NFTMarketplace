//
//  BlurEffect.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 17.01.2024.
//

import protocol SwiftUI.UIViewRepresentable
import UIKit

public extension UIBlurEffect {
  struct View {
    let blurStyle: Style
  }
}

// MARK: - UIViewRepresentable
extension UIBlurEffect.View: UIViewRepresentable {
  public func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
  }

  public func makeUIView(context _: Context) -> UIVisualEffectView {
    .init(effect: UIBlurEffect(style: blurStyle))
  }
}
