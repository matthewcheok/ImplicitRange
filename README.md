<p align="center">
    <img src="https://img.shields.io/badge/language-swift-orange.svg"
         alt="Language">
    <img src="https://img.shields.io/badge/license-MIT-000000.svg"
         alt="License">
</p>

#ImplicitRange
More powerful range operators for Swift

### Demo

Check out the playground for more information:

```swift
let array = [1, 2, 3, 4, 5]
```

You can count from the back using negative indices:
```swift
array[1....(-1)] // [2, 3, 4, 5]
```

Omit the starting index to just start from the beginning:
```swift
array[....3]     // [1, 2, 3, 4]
array[....(-2)]  // [1, 2, 3, 4]
```

Omit the ending index to end at the last element:
```swift
array[2....]     // [3, 4, 5]
```

Start with the larger index to reverse the order:
```swift
array[-2....2]   // [4, 3]
```

## License

`ImplicitRange` is under the MIT license.
