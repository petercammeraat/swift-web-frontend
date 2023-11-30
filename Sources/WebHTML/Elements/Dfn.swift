//
//  Dfn.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<dfn>` HTML element is used to indicate the term being defined within the context of a definition phrase or sentence. The ancestor `<p>` element, the `<dt>/<dd>` pairing, or the nearest `<section>` ancestor of the `<dfn>` element, is considered to be the definition of the term.
///
/// For more information, see [dfn docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dfn)
open class Dfn: StandardElement {
    override open class var name: String { .init(describing: Dfn.self).lowercased() }
}
