//
//  Line.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

/// The `<line>` element is an SVG basic shape used to create a line connecting two points.
///
/// For more information, see [line docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line)
open class Line: StandardElement {
    override open class var name: String { .init(describing: Line.self).lowercased() }

    // TODO: Write documentation
    public init(
        x1: Double,
        y1: Double,
        x2: Double,
        y2: Double,
        pathLength: Double? = nil
    ) {
        super.init()
        setAttributes([
            .init(key: "x1", value: x1.preciseString),
            .init(key: "y1", value: y1.preciseString),
            .init(key: "x2", value: x2.preciseString),
            .init(key: "y2", value: y2.preciseString),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
