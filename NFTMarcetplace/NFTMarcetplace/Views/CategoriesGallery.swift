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
      .navigationDestination(for: Category.self) { category in
        CategoryDetails(categoryName: category.title, categoryImage: category.imageName)
          .padding(.horizontal)
      }
    }
    .scrollIndicators(.hidden)
  }
}

struct CategoriesGallery_Previews: PreviewProvider {
    static var previews: some View {
      CategoriesGallery(categories: Category.createTestData())
    }
}
