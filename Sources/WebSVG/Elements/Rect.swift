//
//  Rect.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The `<rect>` element is a basic SVG shape that draws rectangles, defined by their position, width, and height. The rectangles may have their corners rounded.
///
/// For more information, see [rect docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect)
open class Rect: StandardElement {
    override open class var name: String { .init(describing: Rect.self).lowercased() }

    // TODO: Write documentation
    public init(
        x: Double,
        y: Double,
        width: Double,
        height: Double,
        rx: Double? = nil,
        ry: Double? = nil,
        pathLength: Double? = nil
    ) {
        super.init()
        setAttributes([
            .init(key: "x", value: x.preciseString),
            .init(key: "y", value: y.preciseString),
            .init(key: "width", value: width.preciseString),
            .init(key: "height", value: height.preciseString),
        ])
        attribute("rx", rx?.preciseString)
        attribute("ry", ry?.preciseString)
        attribute("pathLength", pathLength?.preciseString)
    }
}
