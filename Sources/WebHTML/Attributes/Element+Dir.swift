//
//  Element+Dir.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `dir` global attribute is an enumerated attribute that indicates the directionality of the element's text.
    ///
    /// Default is `ltr`
    ///
    /// For more information, see [dir docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/dir)
    @discardableResult
    func dir(_ value: Dir? = .ltr, _ condition: Bool = true) -> Self {
        attribute("dir", value?.rawValue, condition)
    }
}

public enum Dir: String {
    /// Left-to-right text direction
    case ltr
    /// Right-to-left text direction
    case rtl
    /// Let the browser figure out the text direction, based on the content (only recommended if the text direction is unknown)
    case auto
}
