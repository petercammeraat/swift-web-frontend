//
//  Bdi.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<bdi>` HTML element tells the browser's bidirectional algorithm to treat the text it contains in isolation from its surrounding text. It's particularly useful when a website dynamically inserts some text and doesn't know the directionality of the text being inserted.
///
/// For more information, see [bdi docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdi)
open class Bdi: StandardElement {
    override open class var name: String { .init(describing: Bdi.self).lowercased() }
}
