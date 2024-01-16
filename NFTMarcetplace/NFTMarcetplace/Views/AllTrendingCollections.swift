//
//  AllTrendingCollections.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 16.01.2024.
//

import SwiftUI

struct AllTrendingCollections: View {
  var trendingItems: [TrendingItem]

  var body: some View {
    ZStack {
      EllipticalGradient
        .background2
        .ignoresSafeArea()

      ScrollView {
        LazyVGrid(columns: [.init(.adaptive(minimum: 175), spacing: 15)]) {
          ForEach(trendingItems) { item in
            CollectionsCardView(imageName:
                                  item.imageName,
                                title: item.title,
                                numberOfLikes: .constant(item.countOfLikes),
                                isFavorite: .constant(item.isFavorite))
          }
        }
      }

    }
  }
}

struct AllTrendingCollections_Previews: PreviewProvider {
  static var previews: some View {
    AllTrendingCollections(trendingItems: TrendingItem.createTestData())
  }
}
