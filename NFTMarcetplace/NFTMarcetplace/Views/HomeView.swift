//
//  HomeView.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 12.01.2024.
//

import SwiftUI

struct HomeView: View {
  var categories = Category.createTestData()
  var trendingItems = TrendingItem.createTestData()

  var body: some View {
    NavigationStack {
      ZStack {
        EllipticalGradient.background2
          .ignoresSafeArea()

        ScrollView {
          VStack(alignment: .leading, spacing: 20.0) {
            Section(header: SectionHeader(title: "Categories")) {
              CategoriesGallery(categories: categories)
            }

            Section(header: SectionHeader(title: "Trending collections")) {
              TrendingCollectionsGallery(trendingItems: trendingItems)
            }
          }
        }
      }
      .navigationDestination(for: Category.self) { category in
        CategoryDetails(categoryName: category.title, categoryImage: category.imageName)
        .padding(.horizontal)
      }
      .navigationBarTitleDisplayMode(.inline)
      .navigationTitle("NFT Marketplace")
    }
  }
}

struct SectionHeader: View {
  var title: String

  var body: some View {
    Text(title)
      .font(.title3)
      .fontWeight(.semibold)
      .kerning(0.38)
      .multilineTextAlignment(.center)
      .foregroundColor(.white)
      .padding(.horizontal)
  }

}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
