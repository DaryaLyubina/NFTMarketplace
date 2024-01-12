//
//  Category.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 12.01.2024.
//

import Foundation

struct Category: Identifiable {
  var id = UUID()
  var title: String
  var imageName: String

  static func createTestData() -> [Category] {
    return [.init(title: "Example1", imageName: "example1"),
            .init(title: "Example2", imageName: "example2"),
            .init(title: "Example3", imageName: "example3"),
            .init(title: "Example4", imageName: "example4"),
            .init(title: "Example5", imageName: "example5")]
  }
}
