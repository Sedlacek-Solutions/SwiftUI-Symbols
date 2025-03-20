//
//  NavigationLink+SFSymbol.swift
//
//  A SwiftUI NavigationLink extension that provides a convenient way to create
//  navigation links with SF Symbols using the SFSymbol enum.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's NavigationLink for creating links with SF Symbols.
public extension NavigationLink where Label == Image {
    /// Creates a navigation link with an SF Symbol as its label.
    /// - Parameters:
    ///   - symbol: The SF Symbol to use as the navigation link's label.
    ///   - destination: A view builder closure for creating the destination view.
    init(symbol: SFSymbol, @ViewBuilder destination: () -> Destination) {
        self.init(destination: destination) {
            Image(systemName: symbol.rawValue)
        }
    }
}
