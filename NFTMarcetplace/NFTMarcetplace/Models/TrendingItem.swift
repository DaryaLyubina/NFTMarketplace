//
//  TrendingItem.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 15.01.2024.
//

import Foundation

struct TrendingItem: Identifiable {
  var id = UUID()
  var title: String
  var imageName: String
  var countOfLikes: Int
  var isFavorite: Bool

  static func createTestData() -> [TrendingItem] {
    return [.init(title: "Example1", imageName: "example1", countOfLikes: 155, isFavorite: true),
            .init(title: "Example2", imageName: "example2", countOfLikes: 155, isFavorite: true),
            .init(title: "Example3", imageName: "example3", countOfLikes: 155, isFavorite: false),
            .init(title: "Example4", imageName: "example4", countOfLikes: 155, isFavorite: false),
            .init(title: "Example5", imageName: "example5", countOfLikes: 155, isFavorite: true)]
  }
}

extension TrendingItem: Hashable {

}
