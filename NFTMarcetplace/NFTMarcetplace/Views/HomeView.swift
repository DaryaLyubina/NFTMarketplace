//
//  HomeView.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 12.01.2024.
//

import SwiftUI

struct HomeView: View {
  var categories = Category.createTestData()

  var body: some View {
    NavigationStack {
      ZStack {
        EllipticalGradient.background2
          .ignoresSafeArea()

        ScrollView {
          VStack(alignment: .leading, spacing: 20.0) {
            Section {
              CategoriesGallery(categories: categories)
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

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
