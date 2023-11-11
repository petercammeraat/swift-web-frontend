//
//  Cite.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<cite>` HTML element is used to mark up the title of a cited creative work. The reference may be in an abbreviated form according to context-appropriate conventions related to citation metadata.
///
/// For more information, see [cite docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite)
open class Cite: StandardElement {
    override open class var name: String { .init(describing: Cite.self).lowercased() }
}
