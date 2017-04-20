//
//  Literal.swift
//  Pods
//
//  Created by Leavez on 20/04/2017.
//
//

import CoreGraphics
import Foundation


/// By implementing ExpressibleByArrayLiteral, code can be written like below:
///
/// ```
///    let p: CGPoint = [0, 1]
///
///    view.frame = [10, 20, 100, 100]
///
///    attributedString.setAttributes(attrs, range: [0, 1])
///
/// ```


extension CGPoint: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: CGFloat...) {
        assert(elements.count == 2)
        let numbers = clip(elements, to: 2, defaultValue: 0)
        self.init(x: numbers[0], y: numbers[1])
    }
}

extension CGSize: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: CGFloat...) {
        assert(elements.count == 2)
        let numbers = clip(elements, to: 2, defaultValue: 0)
        self.init(width: numbers[0], height: numbers[1])
    }
}

extension CGRect: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: CGFloat...) {
        assert(elements.count == 4)
        let numbers = clip(elements, to: 4, defaultValue: 0)
        self.init(x: numbers[0], y: numbers[1], width:numbers[2], height:numbers[3])
    }
}

extension CGVector: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: CGFloat...) {
        assert(elements.count == 2)
        let numbers = clip(elements, to: 2, defaultValue: 0)
        self.init(dx: numbers[0], dy: numbers[1])
    }
}

extension NSRange: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Int...) {
        assert(elements.count == 2)
        let numbers = clip(elements, to: 2, defaultValue: 0)
        self.init(location: numbers[0], length: numbers[1])
    }
}

private func clip<T>(_ array: [T], to count:Int, defaultValue:T) -> [T] {
    if array.count == count {
        return array
    } else if array.count < count {
        return array + (0..<(count-array.count)).map{ _ in defaultValue }
    } else {
        return Array(array[0..<count])
    }
}

// These type below is support ExpressibleByArrayLiteral natively
//
// - IndexPath
// - NSSet, Set, NSOrderedSet, NSCountedSet, CharacterSet



extension CharacterSet: ExpressibleByStringLiteral {

    public init(extendedGraphemeClusterLiteral value: String) {
        self.init(charactersIn: value)
    }
    public init(stringLiteral value: String) {
        self.init(charactersIn: value)
    }
    public init(unicodeScalarLiteral value: String) {
        self.init(charactersIn: value)
    }
}


#if os(iOS)

    import UIKit

    extension UIEdgeInsets: ExpressibleByArrayLiteral {
        public init(arrayLiteral elements: CGFloat...) {
            assert(elements.count == 4)
            let numbers = clip(elements, to: 4, defaultValue: 0)
            self.init(top: numbers[0], left: numbers[1], bottom:numbers[2], right:numbers[3])
        }
    }

#endif





