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
            ForEach(0..<5) { _ in
              CategoriesGallery(categories: categories)
            }
          }
        }
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

struct CategoriesGallery: View {
  var categories: [Category]

  var body: some View {
    ScrollView(.horizontal) {
      HStack(alignment: .top, spacing: 10.0) {
        ForEach(categories) { category in
          NavigationLink(destination: {
            CategoryDetails(categoryName: category.title, categoryImage: category.imageName)
          }, label: {
            CardView(title: category.title, imageName: category.imageName)
          })
        }
      }
      .padding(.horizontal)
    }
    .scrollIndicators(.hidden)
  }
}
