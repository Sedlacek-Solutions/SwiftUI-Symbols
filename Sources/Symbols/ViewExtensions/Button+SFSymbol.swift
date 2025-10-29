//
//  Button+SFSymbol.swift
//
//  A SwiftUI Button extension that provides a convenient way to create
//  buttons with SF Symbols using the SFSymbol enum.
//
//  Created by James Sedlacek on 3/19/25.
//

import SwiftUI

/// Adds convenience initializers to SwiftUI's Button for creating buttons with SF Symbols.
public extension Button where Label == Image {
    /// Creates a button with an SF Symbol as its label.
    /// - Parameters:
    ///   - symbol: The SF Symbol to use as the button's label.
    ///   - action: The action to perform when the button is tapped.
    init(symbol: SFSymbol, action: @escaping () -> Void) {
        self.init(action: action) {
            Image(systemName: symbol.rawValue)
        }
    }
}
