//
//  TabItem+SFSymbol.swift
//
//  A SwiftUI View extension that provides convenient methods for creating tab items
//  with SF Symbols using the SFSymbol enum.

import SwiftUI

/// Adds convenience methods to SwiftUI's View for creating tab items with SF Symbols.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
public extension View {
    /// Creates a tab item with an SF Symbol and text.
    /// - Parameters:
    ///   - symbol: The SF Symbol to use as the tab item's icon.
    ///   - text: The text to display below the icon.
    /// - Returns: A view with the configured tab item.
    func tabItem(symbol: SFSymbol, text: String) -> some View {
        self.tabItem {
            Label(text, systemImage: symbol.rawValue)
        }
    }

    /// Creates a tab item with an SF Symbol and localized text.
    /// - Parameters:
    ///   - symbol: The SF Symbol to use as the tab item's icon.
    ///   - textKey: The localized string key for the text to display below the icon.
    /// - Returns: A view with the configured tab item.
    func tabItem(symbol: SFSymbol, textKey: LocalizedStringKey) -> some View {
        self.tabItem {
            Label(textKey, systemImage: symbol.rawValue)
        }
    }
}
