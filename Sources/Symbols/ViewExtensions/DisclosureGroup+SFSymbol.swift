//
//  DisclosureGroup+SFSymbol.swift
//  Symbols
//
//  Created by James Sedlacek on 4/20/25.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's DisclosureGroup for creating disclosure groups with SF Symbols.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
public extension DisclosureGroup where Label == SwiftUI.Label<Text, Image> {
    /// Creates a disclosure group with a title string and an SF Symbol.
    /// - Parameters:
    ///   - title: The text to display as the disclosure group's label.
    ///   - symbol: The SF Symbol to use as the disclosure group's icon.
    ///   - content: The content view builder.
    init(
        _ title: String,
        symbol: SFSymbol,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.init(
            content: content,
            label: { Label(title, symbol: symbol) }
        )
    }

    /// Creates a disclosure group with a localized title string and an SF Symbol.
    /// - Parameters:
    ///   - titleKey: The localized string key to display as the disclosure group's label.
    ///   - symbol: The SF Symbol to use as the disclosure group's icon.
    ///   - content: The content view builder.
    init(
        _ titleKey: LocalizedStringKey,
        symbol: SFSymbol,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.init(
            content: content,
            label: { Label(titleKey, symbol: symbol) }
        )
    }

    /// Creates a disclosure group with a title string, SF Symbol, and binding to the expanded state.
    /// - Parameters:
    ///   - title: The text to display as the disclosure group's label.
    ///   - symbol: The SF Symbol to use as the disclosure group's icon.
    ///   - isExpanded: A binding to a Boolean value that determines the disclosure group's expansion state.
    ///   - content: The content view builder.
    init(
        _ title: String,
        symbol: SFSymbol,
        isExpanded: Binding<Bool>,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.init(
            isExpanded: isExpanded,
            content: content,
            label: { Label(title, symbol: symbol) }
        )
    }

    /// Creates a disclosure group with a localized title string, SF Symbol, and binding to the expanded state.
    /// - Parameters:
    ///   - titleKey: The localized string key to display as the disclosure group's label.
    ///   - symbol: The SF Symbol to use as the disclosure group's icon.
    ///   - isExpanded: A binding to a Boolean value that determines the disclosure group's expansion state.
    ///   - content: The content view builder.
    init(
        _ titleKey: LocalizedStringKey,
        symbol: SFSymbol,
        isExpanded: Binding<Bool>,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.init(
            isExpanded: isExpanded,
            content: content,
            label: { Label(titleKey, symbol: symbol) }
        )
    }
}
