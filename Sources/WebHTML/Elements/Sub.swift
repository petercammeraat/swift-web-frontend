//
//  Sub.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<sub>` HTML element specifies inline text which should be displayed as subscript for solely typographical reasons.
///
/// Subscripts are typically rendered with a lowered baseline using smaller text.
///
/// For more information, see [sub docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sub)
open class Sub: StandardElement {
    override open class var name: String { .init(describing: Sub.self).lowercased() }
}
