//
//  Figcaption.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<figcaption>` HTML element represents a caption or legend describing the rest of the contents of its parent `<figure>` element.
///
/// For more information, see [figcaption docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figcaption)
open class Figcaption: StandardElement {
    override open class var name: String { .init(describing: Figcaption.self).lowercased() }
}
