# SF Symbol Best Practices

This guide provides best practices and tips for working with SF Symbols in SwiftUI applications.

## Symbol Variants

SF Symbols can be rendered in different variants to match your interface:

```swift
// Using the symbolVariant modifier
Image(symbol: .star)
    .symbolVariant(.fill)  // Filled variant
    .symbolVariant(.circle)  // Circle variant
    .symbolVariant(.square)  // Square variant
    .symbolVariant(.slash)  // Slashed variant
```

## Scaling

Use appropriate image scaling to maintain visual hierarchy:

```swift
// Using imageScale modifier
Image(symbol: .star)
    .imageScale(.small)   // Smaller than body text
    .imageScale(.medium)  // Matches body text (default)
    .imageScale(.large)   // Larger than body text

// For custom scaling, use font size
Image(symbol: .star)
    .font(.system(size: 24))
```

## Dynamic Colors

Make your symbols adapt to system appearance changes:

```swift
// Using semantic colors
Image(symbol: .star)
    .foregroundStyle(.primary)  // Primary content color
    .foregroundStyle(.secondary)  // Secondary content color
    .foregroundStyle(.tint)  // Accent/tint color

// Using multiple colors in hierarchical symbols
Image(symbol: .star)
    .foregroundStyle(.red, .blue)  // Primary and secondary colors
```

## Accessibility

Ensure your symbols are accessible:

```swift
// Adding accessibility label
Image(symbol: .star)
    .accessibilityLabel("Favorite")

// Hide decorative symbols from VoiceOver
Image(symbol: .star)
    .accessibilityHidden(true)
```

## Animation

Animate symbol changes smoothly:

```swift
// Animate between symbol variants
Image(symbol: .star)
    .symbolVariant(isSelected ? .fill : .none)
    .animation(.default, value: isSelected)

// Animate symbol rotation
Image(symbol: .arrow)
    .rotationEffect(.degrees(isRotated ? 180 : 0))
    .animation(.spring(), value: isRotated)
```

## System Integration

Maintain consistency with system conventions:

- Use standard system symbols when available instead of custom ones
- Choose symbols that match Apple's Human Interface Guidelines
- Maintain consistent sizing and styling across your app
- Use multicolor symbols appropriately (e.g., weather symbols)

## Performance

Optimize symbol usage:

- Cache frequently used symbols rather than creating new instances
- Use appropriate resolution for your target devices
- Be mindful of memory usage when using many symbols

## Localization

Consider cultural differences:

- Some symbols may have different meanings in different cultures
- Use universal symbols when possible
- Test your symbol usage in different locales

## Related Resources

- [SF Symbols App](https://developer.apple.com/sf-symbols/)
- [Human Interface Guidelines - SF Symbols](https://developer.apple.com/design/human-interface-guidelines/sf-symbols)
- [SF Symbols Documentation](https://developer.apple.com/documentation/sf-symbols)
