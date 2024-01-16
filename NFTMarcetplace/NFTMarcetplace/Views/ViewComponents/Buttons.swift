//
//  Buttons.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 10.01.2024.
//

import SwiftUI

struct NFTMarketplaceButton: View {
  @State private var shouldShowMenu = true

  var body: some View {
    HStack {
      Image.grid
        .foregroundColor(.General.textSecondaryColor)
      Text("All categories")
        .font(.subheadline)
        .foregroundColor(.white)
      Image.chevronDown
        .foregroundColor(.General.textSecondaryColor)
    }
    .cardStyle()
    .contextMenu(shouldShowMenu ? menuItems : nil)
  }
}

private let menuItems = ContextMenu {
  Button {
    // Add this item to a list of favorites.
  } label: {
    Label("Add to Favorites", systemImage: "heart")
  }
  Button {
    // Open Maps and center it on this item.
  } label: {
    Label("Show in Maps", systemImage: "mappin")
  }
}

struct Buttons_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      EllipticalGradient
        .background2
        .ignoresSafeArea()
      NFTMarketplaceButton()
    }
  }
}
