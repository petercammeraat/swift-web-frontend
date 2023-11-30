//
//  Path.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

/// The `<path>` SVG element is the generic element to define a shape. All the basic shapes can be created with a path element.
///
/// For more information, see [path docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/path)
open class Path: StandardElement {
    override open class var name: String { .init(describing: Path.self).lowercased() }

    // TODO: Write documentation
    public init(_ d: String, pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(key: "d", value: d),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
