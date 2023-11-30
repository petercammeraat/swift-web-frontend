//
//  Ul.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<ul>` HTML element represents an unordered list of items, typically rendered as a bulleted list.
///
/// For more information, see [ul docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul)
open class Ul: StandardElement {
    override open class var name: String { .init(describing: Ul.self).lowercased() }
}
