//
//  CardViewComponents.swift
//  NFTMarcetplace
//
//  Created by Darya Lyubina  on 10.01.2024.
//

import SwiftUI

// MARK: - Cards
struct CollectionsCardView: View {
  var imageName: String
  var title: String
  @Binding var numberOfLikes: Int
  @Binding var isFavorite: Bool

  var body: some View {
    VStack(spacing: Constants.CollectionsCard.spacing) {
      CardImageView(imageName: imageName)
        .blackShadow()
        .blackRoundedBorder()

      HStack {
        CardTitleView(text: title)
        Spacer()
        FavoriteView(number: $numberOfLikes,
                     isFavorite: $isFavorite)
      }
    }
    .cardStyle()
  }
}

struct SellerCardView: View {
  var imageName: String
  var title: String
  var description: String
  var price: String

  @Binding var numberOfLikes: Int
  @Binding var isFavorite: Bool

  var body: some View {
    VStack(spacing: Constants.CollectionsCard.spacing) {
      CardImageView(imageName: imageName)

      VStack(alignment: .leading,
             spacing: Constants.CollectionsCard.spacing) {
        VStack(alignment: .leading) {
          CardTitleView(text: title)
          CardDescriptionView(text: description)
        }

        HStack {
          PriceView(price: price)
          Spacer()
          FavoriteView(number: $numberOfLikes,
                       isFavorite: $isFavorite)
        }
      }
    }
    .cardStyle()
  }
}

// MARK: - Subviews
struct CardTitleView: View {
  var text: String

  var body: some View {
    Text(text)
      .font(.footnote)
      .fontWeight(.semibold)
      .foregroundColor(.white)
      .kerning(-0.08)
  }
}

struct CardDescriptionView: View {
  var text: String

  var body: some View {
    Text(text)
      .font(.caption2)
      .foregroundColor(.General.textSecondaryColor)
  }
}

struct FavoriteView: View {
  @Binding var number: Int
  @Binding var isFavorite: Bool

  var body: some View {
    HStack {
      HeartView(isFavorite: $isFavorite)
        .font(.footnote)
      Text(String(number))
        .foregroundColor(.General.textSecondaryColor)
        .kerning(0.066)
        .font(.footnote)
    }
  }
}

struct PriceView: View {
  var price: String

  var body: some View {
    HStack {
      Image.ethereum
      Text(String(price))
        .font(.footnote)
        .kerning(-0.24)
        .foregroundColor(.white)
    }
  }
}

struct HeartView: View {
  @Binding var isFavorite: Bool

  var body: some View {
    if isFavorite {
      Image
        .heartFill
        .foregroundColor(.red)
    } else {
      Image
        .heart
        .foregroundColor(.General.textSecondaryColor)
    }
  }
}

struct CardImageView: View {
  var imageName: String

  var body: some View {
    Image(imageName)
      .resizable()
      .scaledToFill()
      .frame(width: Constants.CollectionsCard.imageSize,
             height: Constants.CollectionsCard.imageSize)
      .cornerRadius(Constants.CollectionsCard.imageCornerRadius)
  }
}

struct CollectionsCardView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      EllipticalGradient
        .background2
        .ignoresSafeArea()

      HStack(alignment: .top) {
        Spacer()
        CollectionsCardView(
          imageName: "example6",
          title: "3D Art",
          numberOfLikes: .constant(200),
          isFavorite: .constant(false))

        SellerCardView(imageName: "example6",
                       title: "Title", description: "description",
                       price: "0.006", numberOfLikes: .constant(20000),
                       isFavorite: .constant(true))

        Spacer()
      }
    }
  }
}
