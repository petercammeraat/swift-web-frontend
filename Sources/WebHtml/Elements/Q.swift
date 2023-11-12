//
//  Q.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<q>` HTML element indicates that the enclosed text is a short inline quotation.
///
/// Most modern browsers implement this by surrounding the text in quotation marks. This element is intended for short quotations that don't require paragraph breaks; for long quotations use the `<blockquote>` element.
///
/// For more information, see [q docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q)
open class Q: StandardElement {
    override open class var name: String { .init(describing: Q.self).lowercased() }
}

public extension Q {
    /// Specifies the source URL of the quote
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
}
