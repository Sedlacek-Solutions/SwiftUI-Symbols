//
//  SFSymbol.swift
//
//  A type-safe wrapper for SF Symbols that ensures symbol validity at initialization
//  and provides a convenient way to use SF Symbols throughout SwiftUI applications.
//
//  Created by James Sedlacek on 3/19/25.
//

import Foundation
import SwiftUI

/// A type-safe representation of Apple's SF Symbols.
/// This struct ensures that only valid SF Symbol names are used in the application.
public struct SFSymbol: Hashable, RawRepresentable, Sendable {
    /// The raw string value of the SF Symbol name.
    public let rawValue: String

    /// Creates a new SFSymbol instance.
    /// - Parameter rawValue: The name of the SF Symbol.
    /// - Note: This initializer will cause a fatal error if the symbol name is invalid.
    public init(rawValue: String) {
        // Validate symbol existence during initialization
        guard Self.isValid(symbol: rawValue) else {
            fatalError("Invalid SF Symbol name: \(rawValue)")
        }
        self.rawValue = rawValue
    }

    /// Validates whether a given string represents a valid SF Symbol name.
    /// - Parameter symbol: The string to validate.
    /// - Returns: A boolean indicating whether the symbol exists in the SF Symbols catalog.
    public static func isValid(symbol: String) -> Bool {
        #if canImport(UIKit)
            return UIImage(systemName: symbol) != nil
        #elseif canImport(AppKit)
            return NSImage(systemSymbolName: symbol, accessibilityDescription: nil) != nil
        #else
            return false
        #endif
    }
}

/// Common SF Symbols provided for convenience.
extension SFSymbol {
    /// A heart symbol.
    public static let heart = SFSymbol(rawValue: "heart")
    /// A star symbol.
    public static let star = SFSymbol(rawValue: "star")
    /// A bell symbol.
    public static let bell = SFSymbol(rawValue: "bell")
}
