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
            CategoriesSection(categories: categories)

            Spacer()
              .frame(height: 20)

            TrendingItemsSection(trendingItems: trendingItems)

            Spacer()
              .frame(height: 20)

            TopSellerSection(sellers: topSellers)
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

private struct TrendingItemsSection: View {
  var trendingItems: [TrendingItem]

  var body: some View {
    Section {
      TrendingCollectionsGallery(trendingItems: trendingItems)
    } header: {
      NavigationLink {
        AllTrendingCollections(trendingItems: trendingItems)
      } label: {
        SectionHeader(title: "Trending collections")
      }
    }
  }
}

private struct TopSellerSection: View {
  var sellers: [Seller]

  var body: some View {
    Section {
      SellersGallery(sellers: sellers)
    } header: {
      NavigationLink {
        AllSellersView(sellers: sellers)
      } label: {
        SectionHeader(title: "Top seller")
      }
    }
  }
}

struct CategoriesSection: View {
  var categories: [Category]

  var body: some View {
    Section(header: SectionHeader(title: "Categories")) {
      CategoriesGallery(categories: categories)
    }
  }
}
