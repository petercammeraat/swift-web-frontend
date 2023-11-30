//
//  Sup.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<sup>` HTML element specifies inline text which is to be displayed as superscript for solely typographical reasons.
///
/// Superscripts are usually rendered with a raised baseline using smaller text.
///
/// For more information, see [sup docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sup)
open class Sup: StandardElement {
    override open class var name: String { .init(describing: Sup.self).lowercased() }
}
