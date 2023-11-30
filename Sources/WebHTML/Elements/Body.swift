//
//  Body.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<body>` HTML element represents the content of an HTML document. There can be only one `<body>` element in a document.
///
/// For more information, see [body docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/body)
open class Body: StandardElement {
    override open class var name: String { .init(describing: Body.self).lowercased() }
}
