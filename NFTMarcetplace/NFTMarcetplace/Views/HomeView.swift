//
//  HomeView.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 12.01.2024.
//

import SwiftUI

struct HomeView: View {
  private var categories = Category.createTestData()
  private var trendingItems = TrendingItem.createTestData()
  private var topSellers = Seller.createTestData()

  var body: some View {
    NavigationStack {
      ZStack {
        EllipticalGradient.background2
          .ignoresSafeArea()

        ScrollView {
          VStack(alignment: .leading) {
            Section(header: SectionHeader(title: "Categories")) {
              CategoriesGallery(categories: categories)
            }

            Spacer()
              .frame(height: 20)

            Section(header: SectionHeader(title: "Trending collections")) {
              TrendingCollectionsGallery(trendingItems: trendingItems)
            }

            Spacer()
              .frame(height: 20)

            Section(header: SectionHeader(title: "Trending collections")) {
              SellersGallery(sellers: topSellers)
            }
          }
        }
      }
      .navigationDestination(for: Category.self) { category in
        CategoryDetails(categoryName: category.title, categoryImage: category.imageName)
        .padding(.horizontal)
      }
      .navigationTitle("NFT Marketplace")
    }
    .toolbarColorScheme(.dark, for: .navigationBar)
    .preferredColorScheme(.dark)
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
