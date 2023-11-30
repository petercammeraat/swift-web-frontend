//
//  Polygon.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The `<polygon>` element defines a closed shape consisting of a set of connected straight line segments. The last point is connected to the first point.
///
/// For more information, see [polygon docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polygon)
open class Polygon: StandardElement {
    override open class var name: String { .init(describing: Polygon.self).lowercased() }

    // TODO: Write documentation
    public init(_ points: [Double], pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(key: "points", value: points.map(\.preciseString).joined(separator: " ")),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
