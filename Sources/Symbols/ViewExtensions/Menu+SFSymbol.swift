//
//  Menu+SFSymbol.swift
//
//  A SwiftUI Menu extension that provides a convenient way to create
//  menu buttons with SF Symbols using the SFSymbol enum.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's Menu for creating menus with SF Symbols.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
public extension Menu where Label == Image {
    /// Creates a menu with an SF Symbol as its label.
    /// - Parameters:
    ///   - symbol: The SF Symbol to use as the menu's label.
    ///   - content: A view builder closure for creating the menu's content.
    init(symbol: SFSymbol, @ViewBuilder content: () -> Content) {
        self.init {
            content()
        } label: {
            Image(systemName: symbol.rawValue)
        }
    }
}
