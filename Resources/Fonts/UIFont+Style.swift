//
//  UIFont+Style.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI
// swiftlint: disable all
// An extension to provide custom font styles using the Cairo and Poppins font families.
public extension Font {
    /// Returns a custom font with a bold style and a size of 24 points.
    static var h1: Font {
        return .custom(size: 28)
    }
    /// Returns a custom font with a bold style and a size of 20 points.
    static var h2: Font {
        return .custom(size: 24)
    }
    /// Returns a custom font with a medium weight and a size of 16 points.
    static var h3: Font {
        return .custom(size: 20)
    }
    /// Returns a custom font with a medium weight and a size of 14 points.
    static var medium: Font {
        return .custom(size: 16)
    }
    /// Returns a custom font with a regular weight and a size of 12 points.
    static var regular: Font {
        return .custom(size: 14)
    }
    /// Returns a custom font with a regular weight and a size of 10 points.
    static var small: Font {
        return .custom(size: 12)
    }
    /// Returns a custom font with the specified size and weight.
    ///
    /// - Parameters:
    ///   - size: The size of the font in points.
    ///   - weight: The weight of the font.
    /// - Returns: A custom font with the given size and weight.
    static func custom(size: CGFloat) -> Font {
        return Font.custom("RobotoCondensed-Regular", size: size)
    }
}
// swiftlint: enable all
