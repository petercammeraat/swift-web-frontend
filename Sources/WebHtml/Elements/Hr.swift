//
//  Hr.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<hr>` HTML element represents a thematic break between paragraph-level elements: for example, a change of scene in a story, or a shift of topic within a section.
///
/// For more information, see [hr docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/hr)
open class Hr: EmptyElement {
    override open class var name: String { .init(describing: Hr.self).lowercased() }
}
