//
//  Span.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<span>` HTML element is a generic inline container for phrasing content, which does not inherently represent anything.
///
/// It can be used to group elements for styling purposes (using the class or id attributes), or because they share attribute values, such as lang. It should be used only when no other semantic element is appropriate. `<span>` is very much like a `<div>` element, but `<div>` is a block-level element whereas a `<span>` is an inline-level element.
///
/// For more information, see [span docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/span)
open class Span: StandardElement {
    override open class var name: String { .init(describing: Span.self).lowercased() }
}
