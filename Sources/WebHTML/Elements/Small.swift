//
//  Small.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<small>` HTML element represents side-comments and small print, like copyright and legal text, independent of its styled presentation.
///
/// By default, it renders text within it one font-size smaller, such as from small to x-small.
///
/// For more information, see [small docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/small)
open class Small: StandardElement {
    override open class var name: String { .init(describing: Small.self).lowercased() }
}
