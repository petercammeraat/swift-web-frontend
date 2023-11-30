//
//  U.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<u>` HTML element represents a span of inline text which should be rendered in a way that indicates that it has a non-textual annotation.
///
/// This is rendered by default as a simple solid underline, but may be altered using CSS.
///
/// For more information, see [u docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u)
open class U: StandardElement {
    override open class var name: String { .init(describing: U.self).lowercased() }
}
