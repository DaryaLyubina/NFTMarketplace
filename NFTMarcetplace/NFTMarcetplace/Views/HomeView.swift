//
//  HomeView.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 12.01.2024.
//

import SwiftUI

struct HomeView: View {
  @State var selectedMenuItem: SectionType?

  private var sections: [SectionType] = [
    .categories(items: Category.createTestData()),
    .trendingCollections(items: TrendingItem.createTestData()),
    .topSeller(items: Seller.createTestData())
  ]

  var body: some View {
    NavigationStack {
      ZStack {
        EllipticalGradient.background2
          .ignoresSafeArea()

        ScrollView {
          ScrollViewReader { proxy in
            VStack(alignment: .leading) {
              ForEach(sections, id: \.title) { section in
                switch section {
                case .categories(let items):
                  CategoriesSection(categories: items)
                case .trendingCollections(let items):
                  TrendingItemsSection(trendingItems: items)
                case .topSeller(let items):
                  TopSellerSection(sellers: items)
                }
                
                Spacer()
                  .frame(height: 20)
              }
            }
            .onChange(of: selectedMenuItem) { _ in
              withAnimation {
                proxy.scrollTo(selectedMenuItem?.title, anchor: .top)
              }
              selectedMenuItem = nil
            }
          }
        }
      }
      .navigationDestination(for: Category.self) { category in
        CategoryDetails(categoryName: category.title, categoryImage: category.imageName)
          .padding(.horizontal)
      }
      .navigationTitle("NFT Marketplace")
      .toolbar {
        ToolbarItem {
          Menu("GoTo") {
            ForEach(sections, id: \.title) { section in
              Button(section.title) {
                selectedMenuItem = section
              }
            }
          }
        }
      }
      .toolbarColorScheme(.dark, for: .navigationBar)
      .preferredColorScheme(.dark)
    }
  }
}

enum SectionType: Equatable {
  case categories(items: [Category])
  case trendingCollections(items: [TrendingItem])
  case topSeller(items: [Seller])

  var title: String {
    switch self {
    case .categories:
      return "Categories"
    case .trendingCollections:
      return "Trending Collections"
    case .topSeller:
      return "Top seller"
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
