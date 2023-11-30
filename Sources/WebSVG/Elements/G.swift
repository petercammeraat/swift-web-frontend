//
//  G.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The `<g>` SVG element is a container used to group other SVG elements.
///
/// Transformations applied to the `<g>` element are performed on its child elements, and its attributes are inherited by its children. It can also group multiple elements to be referenced later with the `<use>` element.
///
/// For more information, see [g docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/g)
open class G: StandardElement {
    override open class var name: String { .init(describing: G.self).lowercased() }
}
