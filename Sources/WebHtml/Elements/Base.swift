//
//  Base.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<base>` HTML element specifies the base URL to use for all relative URLs in a document. There can be only one `<base>` element in a document.
/// A document's used base URL can be accessed by scripts with Node.baseURI. If the document has no `<base>` elements, then baseURI defaults to location.href.
///
/// For more information, see [base docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base)
open class Base: EmptyElement {
    override open class var name: String { .init(describing: Base.self).lowercased() }
}

public extension Base {
    /// Specifies the base URL for all relative URLs in the page
    func href(_ value: String) -> Self {
        attribute("href", value)
    }

    /// Specifies the default target for all hyperlinks and forms in the page
    func target(_ value: Target) -> Self {
        attribute("target", value.rawValue)
    }
}
