//
//  Label+SFSymbol.swift
//
//  A SwiftUI Label extension that provides a convenient way to create
//  labels with SF Symbols using the SFSymbol enum.
//
//  Created by James Sedlacek on 3/19/25.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's Label for creating labels with SF Symbols.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
public extension Label where Title == Text, Icon == Image {
    /// Creates a label with a title string and an SF Symbol.
    /// - Parameters:
    ///   - title: The text to display as the label's title.
    ///   - symbol: The SF Symbol to use as the label's icon.
    init(_ title: String, symbol: SFSymbol) {
        self.init(title, systemImage: symbol.rawValue)
    }
}
