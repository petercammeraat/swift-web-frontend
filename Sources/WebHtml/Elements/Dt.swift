//
//  Dt.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<dt>` HTML element specifies a term in a description or definition list, and as such must be used inside a `<dl>` element. It is usually followed by a `<dd>` element; however, multiple `<dt>` elements in a row indicate several terms that are all defined by the immediate next `<dd>` element.
///
/// For more information, see [dt docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dt)
open class Dt: StandardElement {
    override open class var name: String { .init(describing: Dt.self).lowercased() }
}
