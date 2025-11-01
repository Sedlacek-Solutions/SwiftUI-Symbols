//
//  SFSymbol+Previews.swift
//
//  SwiftUI previews showcasing various uses of Symbols components.
//  These previews demonstrate the integration of SF Symbols with different SwiftUI views.

#if canImport(SwiftUI)
import SwiftUI

/// Preview demonstrating the use of SF Symbols in a Button.
#Preview("Button") {
    Button(symbol: .star) {
        print("Button tapped!")
    }
}

/// Preview demonstrating the use of SF Symbols in a ContentUnavailableView.
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, *)
#Preview("ContentUnavailableView") {
    ContentUnavailableView(
        "Title",
        symbol: .bell,
        description: "Description",
        actions: {
            Button("Action") {}
        }
    )
}

/// Preview demonstrating the use of SF Symbols in a Label.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
#Preview("Label") {
    VStack(spacing: 20) {
        Label("Favorites", symbol: .heart)
    }
    .padding()
}

/// Preview demonstrating the use of SF Symbols in a LabeledContent.
@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
#Preview("LabeledContent") {
    Form {
        LabeledContent("Ratings", symbol: .star) {
            Text("5")
        }
    }
}

/// Preview demonstrating the use of SF Symbols in a DisclosureGroup.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
#Preview("DisclosureGroup") {
    Form {
        DisclosureGroup("Favorites", symbol: .heart) {
            Text("Expanded State!")
        }
    }
}

/// Preview demonstrating the use of SF Symbols in a NavigationLink.
#Preview("NavigationLink") {
    NavigationView {
        NavigationLink(symbol: .star) {
            Text("Destination View")
        }
    }
}

/// Preview demonstrating the use of SF Symbols in a Menu.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
#Preview("Menu") {
    Menu(symbol: .star) {
        Button("Option 1") {}
        Button("Option 2") {}
    }
}

/// Preview demonstrating the use of SF Symbols in a TabView.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, visionOS 1.0, *)
#Preview("TabView") {
    TabView {
        Color.red
            .tabItem(symbol: .star, text: "Star")
        Color.blue
            .tabItem(symbol: .heart, text: "Heart")
    }
}
#endif
