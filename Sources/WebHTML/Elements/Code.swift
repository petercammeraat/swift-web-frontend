//
//  Code.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<code>` HTML element displays its contents styled in a fashion intended to indicate that the text is a short fragment of computer code. By default, the content text is displayed using the user agent's default monospace font.
///
/// For more information, see [code docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/code)
open class Code: StandardElement {
    override open class var name: String { .init(describing: Code.self).lowercased() }
}
