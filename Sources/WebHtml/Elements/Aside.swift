//
//  Aside.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<aside>` HTML element represents a portion of a document whose content is only indirectly related to the document's main content. Asides are frequently presented as sidebars or call-out boxes.
///
/// For more information, see [aside docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/aside)
open class Aside: StandardElement {
    override open class var name: String { .init(describing: Aside.self).lowercased() }
}
