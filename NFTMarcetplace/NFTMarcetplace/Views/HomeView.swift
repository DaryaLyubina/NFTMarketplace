//
//  HomeView.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 12.01.2024.
//

import SwiftUI

struct HomeView: View {
  var categories: [Category]

    var body: some View {
      VStack {
        ScrollView(.horizontal) {
          HStack(alignment: .top, spacing: 10.0) {
            ForEach(categories) { category in
              CardView(title: category.title, imageName: category.imageName)
            }
          }
          .padding(.horizontal)
        }
        .scrollIndicators(.hidden)

        Spacer()
      }
      .background(EllipticalGradient.background2)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView(categories: Category.createTestData())
    }
}
