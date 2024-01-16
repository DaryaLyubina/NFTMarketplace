//
//  CategoryDetails.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 12.01.2024.
//

import SwiftUI

struct CategoryDetails: View {
  var categoryName: String
  var categoryImage: String

    var body: some View {
      ZStack {
        Image(categoryImage)
          .resizable()
          .scaledToFill()
          .ignoresSafeArea()

        Text(categoryName)
          .font(.title)
          .bold()
          .foregroundColor(.white)
          .kerning(4)
          .shadow(color: .black, radius: 5)
      }
    }
}

struct CategoryDetails_Previews: PreviewProvider {
    static var previews: some View {
      CategoryDetails(categoryName: "Example", categoryImage: "example1")
    }
}
