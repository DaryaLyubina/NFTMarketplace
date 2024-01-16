//
//  Seller.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 16.01.2024.
//

import Foundation
import SwiftUI

struct Seller: Identifiable {
  var id = UUID()
  var title: String
  var description: String
  var imageName: String
  var countOfLikes: Int
  var isFavorite: Bool
  var price: String

  static func createTestData() -> [Seller] {
    return [.init(title: "Example1", description: "example1",
                  imageName: "example1", countOfLikes: 120, isFavorite: false, price: "0.018"),
            .init(title: "Example2", description: "example2",
                  imageName: "example2", countOfLikes: 120, isFavorite: false, price: "0.02"),

            .init(title: "Example3", description: "example3",
                  imageName: "example3", countOfLikes: 120, isFavorite: false, price: "0.6"),

            .init(title: "Example4", description: "example4",
                  imageName: "example4", countOfLikes: 120, isFavorite: false, price: "0.4"),

            .init(title: "Example5", description: "example5",
                  imageName: "example5", countOfLikes: 120, isFavorite: false, price: "0.057"),

            .init(title: "Example1", description: "example1",
                  imageName: "example1", countOfLikes: 120, isFavorite: false, price: "0.33"),

            .init(title: "Example2", description: "example2",
                  imageName: "example2", countOfLikes: 120, isFavorite: false, price: "0.02")

]
  }
}

extension Seller: Hashable {

}

extension Seller {
  var sellerCard: some View {
    SellerCardView(imageName: imageName,
                   title: title,
                   description: description,
                   price: price,
                   numberOfLikes: .constant(countOfLikes),
                   isFavorite: .constant(isFavorite))
  }
}
