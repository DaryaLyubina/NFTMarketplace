//
//  AllSellersView.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 16.01.2024.
//

import SwiftUI

struct AllSellersView: View {
  var sellers: [Seller]

  var body: some View {
    ZStack {
      EllipticalGradient
        .background2
        .ignoresSafeArea()

      ScrollView {
        LazyVGrid(columns: [.init(.adaptive(minimum: 175), spacing: 15)], spacing: 10) {
          ForEach(sellers, content: \.sellerCard)
        }
        .padding()
      }
    }
  }
}

struct AllSellersView_Previews: PreviewProvider {
  static var previews: some View {
    AllSellersView(sellers: Seller.createTestData())

    AllSellersView(sellers: Seller.createTestData())
      .previewDevice("iPad Air (5th generation)")

  }
}
