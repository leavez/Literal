# Literal

Literal is a swift libiary to provide convenient initializers for CGPoint, CGRect, NSRange and etc.. 

```swift
let p: CGPoint = [0, 1]
view.frame = [10, 20, 100, 100]
mutableString.deleteCharacters(in: [0, 2])
```

In Swift, a literal could be used anywhere an instance of an ExpressibleByXXXLiteral type is expected. For example, `let numbers: Set = [0, 1, 2]` is compilable as `Set` is comform to `ExpressibleByArrayLiteral`. 

This feature come with the first version of swift. A library called [Literally]("https://github.com/mattt/Literally") is created at that time to demonstration this feature. However, the release of Swift 1.1 break this feature as it cannot be used on extension of object types. Fortunately, it could still be used on struct types and many of swift types have already implement this feature natively.

This lib implements ExpressibleByArrayLiteral protocol on some very commonly used types. With this a CGRect value could be initialized with an array of 4 numbers.


## Support Types

ExpressibleByArrayLiteral

- `CGPoint`
- `CGSize`
- `CGRect`
- `CGVector`
- `NSRange`
- `UIEdgeInsets`

**NOTE:** This break the complie safety. If you pass an array of 2 number to an CGRect variable, it won't produce an complie error. You may get an assert at runtime and a default value 0 is used in the release version. When the count of array is greater than needed, values in the front is used.

ExpressibleByStringLiteral

- `CharacterSet`

These types support ExpressibleByArrayLiteral natively: `IndexPath`, `NSSet`, `Set`, `NSOrderedSet`, `NSCountedSet`, `CharacterSet` ...



## Installation

Literal only have one source file. You could use it directly in your project as convenience.

or use Cocoapods:

```ruby
pod "Literal"
```
or Swift Package Manager:
```swift
import PackageDescription

let package = Package(
    name: "MyAwesomeApp",
    dependencies: [
        .Package(url: "https://github.com/leavez/Literal.git", "1.0"),
    ]
)
```


## License

Literal is available under the MIT license.
