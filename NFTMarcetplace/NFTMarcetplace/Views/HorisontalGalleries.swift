//
//  CategoriesGallery.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 15.01.2024.
//

import SwiftUI

struct CategoriesGallery: View {
  var categories: [Category]

  var body: some View {
    ScrollView(.horizontal) {
      LazyHStack(alignment: .top, spacing: 10.0) {
        ForEach(categories) { category in
          NavigationLink(value: category) {
            CardView(title: category.title,
                     imageName: category.imageName)
          }
          .tint(.clear)
        }
      }
      .padding(.horizontal)
      .navigationDestination(for: Category.self) { category in
        CategoryDetails(categoryName: category.title, categoryImage: category.imageName)
      }
    }
    .scrollIndicators(.hidden)
  }
}

struct TrendingCollectionsGallery: View {
  var trendingItems: [TrendingItem]

  var body: some View {
    ScrollView(.horizontal) {
      LazyHStack(alignment: .top, spacing: 10.0) {
        ForEach(trendingItems) { item in
            CollectionsCardView(imageName:
                                  item.imageName,
                                title: item.title,
                                numberOfLikes: .constant(item.countOfLikes),
                                isFavorite: .constant(item.isFavorite))
        }
      }
      .padding(.horizontal)
    }
    .scrollIndicators(.hidden)
  }
}

struct CategoriesGallery_Previews: PreviewProvider {
    static var previews: some View {
      ZStack {
        EllipticalGradient.background2
          .ignoresSafeArea()

        VStack {
          CategoriesGallery(categories: Category.createTestData())
          TrendingCollectionsGallery(trendingItems: TrendingItem.createTestData())
        }
      }
    }
}
