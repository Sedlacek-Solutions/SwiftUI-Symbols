//
//  ContentUnavailableView+SFSymbol.swift
//
//  A SwiftUI ContentUnavailableView extension that provides a convenient way
//  to create content unavailable views with SF Symbols using the SFSymbol enum.
//
//  Created by James Sedlacek on 3/19/25.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's ContentUnavailableView for creating views with SF Symbols.
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, *)
extension ContentUnavailableView where Label == SwiftUI.Label<Text, Image>, Description == Text? {
    /// Creates a content unavailable view with an SF Symbol and optional description.
    /// - Parameters:
    ///   - titleKey: The localized string key for the title.
    ///   - symbol: The SF Symbol to use as the view's icon.
    ///   - description: An optional localized string key for the description text.
    ///   - actions: A view builder closure for creating action buttons.
    public nonisolated init(
        _ titleKey: LocalizedStringKey,
        symbol: SFSymbol,
        description: LocalizedStringKey? = nil,
        @ViewBuilder actions: () -> Actions = { EmptyView() }
    ) {
        self.init(
            label: {
                Label(titleKey, systemImage: symbol.rawValue)
            },
            description: {
                if let description {
                    Text(description)
                }
            },
            actions: actions
        )
    }
}
