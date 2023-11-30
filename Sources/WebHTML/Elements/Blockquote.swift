//
//  Blockquote.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<blockquote>` HTML element indicates that the enclosed text is an extended quotation. Usually, this is rendered visually by indentation (see Notes for how to change it).
/// A URL for the source of the quotation may be given using the cite attribute, while a text representation of the source can be given using the `<cite>` element.
///
/// For more information, see [blockquote docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote)
open class Blockquote: StandardElement {
    override open class var name: String { .init(describing: Blockquote.self).lowercased() }
}

public extension Blockquote {
    /// Specifies the source of the quotation
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
}
