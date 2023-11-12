//
//  Dl.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<dl>` HTML element represents a description list. The element encloses a list of groups of terms (specified using the `<dt>` element) and descriptions (provided by `<dd>` elements). Common uses for this element are to implement a glossary or to display metadata (a list of key-value pairs).
///
/// For more information, see [dl docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl)
open class Dl: StandardElement {
    override open class var name: String { .init(describing: Dl.self).lowercased() }
}
