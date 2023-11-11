//
//  Dd.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<dd>` HTML element provides the description, definition, or value for the preceding term (`<dt>`) in a description list (`<dl>`).
///
/// For more information, see [dd docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dd)
open class Dd: StandardElement {
    override open class var name: String { .init(describing: Dd.self).lowercased() }
}
