# SFSymbolKit

SFSymbolKit is a Swift package that simplifies working with SF Symbols in SwiftUI by providing type-safe and convenient extensions for common SwiftUI views.

## Motivation

Working with SF Symbols in SwiftUI often involves:
- Repeating string literals for symbol names, which can lead to typos
- No compile-time validation of symbol names

SFSymbolKit solves these issues by providing:
- Type-safe symbol names with compile-time validation
- Convenience initializers for SwiftUI views that accept SF Symbols

## Best Practices

For detailed guidance on working with SF Symbols effectively, including symbol variants, scaling, colors, accessibility, and more, check out our [Best Practices Guide](BEST_PRACTICES.md).

## Requirements
- iOS 13.0+
- macOS 12.0+
- tvOS 13.0+
- watchOS 6.0+
- visionOS 1.0+
- Swift 6.0+

## Installation

### Swift Package Manager

Add SFSymbolKit to your project through Xcode:
1. File > Add Package Dependencies
2. Enter the package URL: `https://github.com/Sedlacek-Solutions/SFSymbolKit.git`

Or add it to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/Sedlacek-Solutions/SFSymbolKit.git", branch: "main")
]
```

## Usage

SFSymbolKit provides convenient extensions for various SwiftUI views to use SF Symbols in a type-safe way.

### Adding SF Symbols

SF Symbols can be added to the `SFSymbol` enum using static properties:

```swift
extension SFSymbol {
    static let star = SFSymbol(rawValue: "star")
    static let heart = SFSymbol(rawValue: "heart")
    static let bell = SFSymbol(rawValue: "bell")
}
```

### Button
```swift
Button(symbol: .star) {
    print("Button tapped!")
}
```

### ContentUnavailableView
```swift
ContentUnavailableView(
    "No Data",
    symbol: .bell,
    description: "Check back later",
    actions: {
        Button("Refresh") {}
    }
)
```

### Image
```swift
Image(symbol: .star)
```

### Label
```swift
Label("Favorites", symbol: .star)
```

### Menu
```swift
Menu(symbol: .star) {
    Button("Option 1") {}
    Button("Option 2") {}
}
```

### NavigationLink
```swift
NavigationLink(symbol: .star) {
    Text("Destination View")
}
```

### TabView
```swift
TabView {
    Color.red
        .tabItem(symbol: .star, text: "Star")
    Color.blue
        .tabItem(symbol: .heart, text: "Heart")
}
```
