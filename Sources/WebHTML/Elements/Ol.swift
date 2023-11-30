//
//  Ol.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<ol>` HTML element represents an ordered list of items — typically rendered as a numbered list.
///
/// For more information, see [ol docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol)
open class Ol: StandardElement {
    override open class var name: String { .init(describing: Ol.self).lowercased() }
}

public extension Ol {
    enum `Type`: String {
        /// Default. Decimal numbers (1, 2, 3, 4)
        case `default` = "1"
        /// Alphabetically ordered list, lowercase (a, b, c, d)
        case lowerAlpa = "a"
        /// Alphabetically ordered list, uppercase (A, B, C, D)
        case upperAlpha = "A"
        /// Roman numbers, lowercase (i, ii, iii, iv)
        case lowerRoman = "i"
        /// Roman numbers, uppercase (I, II, III, IV)
        case upperRoman = "I"
    }
    
    /// Specifies that the list order should be reversed (9,8,7...)
    func reversed(_ value: Double) -> Self {
        attribute("reversed", String(value))
    }
    
    /// Specifies the start value of an ordered list
    func start(_ value: Int) -> Self {
        attribute("start", String(value))
    }
    
    /// Specifies the kind of marker to use in the list
    func type(_ value: `Type`) -> Self {
        attribute("type", value.rawValue)
    }
}
