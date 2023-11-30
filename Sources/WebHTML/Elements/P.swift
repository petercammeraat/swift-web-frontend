//
//  P.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<p>` HTML element represents a paragraph.
///
/// Paragraphs are usually represented in visual media as blocks of text separated from adjacent blocks by blank lines and/or first-line indentation, but HTML paragraphs can be any structural grouping of related content, such as images or form fields.
///
/// For more information, see [p docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/p)
open class P: StandardElement {
    override open class var name: String { .init(describing: P.self).lowercased() }
}
