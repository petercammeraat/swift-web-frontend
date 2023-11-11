//
//  Section.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<section>` HTML element represents a generic standalone section of a document, which doesn't have a more specific semantic element to represent it. Sections should always have a heading, with very few exceptions.
///
/// For more information, see [section docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/section)
open class Section: StandardElement {
    override open class var name: String { .init(describing: Section.self).lowercased() }
}
