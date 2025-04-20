//
//  LabeledContent+SFSymbol.swift
//
//  A SwiftUI LabeledContent extension that provides a convenient way to create
//  labeled content with SF Symbols using the SFSymbol enum.
//
//  Created by James Sedlacek on 3/19/25.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's LabeledContent for creating labeled content with SF Symbols.
@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
public extension LabeledContent where Label == SwiftUI.Label<Text, Image>, Content: View {
    /// Creates labeled content with a title string and an SF Symbol.
    /// - Parameters:
    ///   - title: The text to display as the content's label.
    ///   - symbol: The SF Symbol to use as the content's icon.
    ///   - content: The content to display.
    init(_ title: String, symbol: SFSymbol, @ViewBuilder content: () -> Content) {
        self.init(
            content: content,
            label: {
                Label(title, systemImage: symbol.rawValue)
            }
        )
    }
    
    /// Creates labeled content with a localized title string and an SF Symbol.
    /// - Parameters:
    ///   - titleKey: The localized string key to display as the content's label.
    ///   - symbol: The SF Symbol to use as the content's icon.
    ///   - content: The content to display.
    init(_ titleKey: LocalizedStringKey, symbol: SFSymbol, @ViewBuilder content: () -> Content) {
        self.init(
            content: content,
            label: {
                Label(titleKey, systemImage: symbol.rawValue)
            }
        )
    }
}
