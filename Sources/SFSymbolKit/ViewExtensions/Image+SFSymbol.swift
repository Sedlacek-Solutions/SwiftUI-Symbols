//
//  Image+SFSymbol.swift
//
//  A SwiftUI Image extension that provides a convenient way to create
//  images with SF Symbols using the SFSymbol enum.
//
//  Created by James Sedlacek on 3/19/25.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's Image for creating images with SF Symbols.
public extension Image {
    /// Creates an image with an SF Symbol.
    /// - Parameter symbol: The SF Symbol to use for the image.
    init(symbol: SFSymbol) {
        self.init(systemName: symbol.rawValue)
    }
}
