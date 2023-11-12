//
//  Em.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<em>` HTML element marks text that has stress emphasis. The `<em>` element can be nested, with each level of nesting indicating a greater degree of emphasis.
///
/// For more information, see [em docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em)
open class Em: StandardElement {
    override open class var name: String { .init(describing: Em.self).lowercased() }
}
