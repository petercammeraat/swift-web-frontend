//
//  Div.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<div>` HTML element is the generic container for flow content. It has no effect on the content or layout until styled in some way using CSS (e.g. styling is directly applied to it, or some kind of layout model like Flexbox is applied to its parent element).
///
/// For more information, see [div docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div)
open class Div: StandardElement {
    override open class var name: String { .init(describing: Div.self).lowercased() }
}
