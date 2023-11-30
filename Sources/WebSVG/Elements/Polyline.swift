//
//  Polyline.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The `<polyline>` SVG element is an SVG basic shape that creates straight lines connecting several points.
///
/// Typically a polyline is used to create open shapes as the last point doesn't have to be connected to the first point. For closed shapes see the `<polygon>` element.
///
/// For more information, see [polyline docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline)
open class Polyline: StandardElement {
    override open class var name: String { .init(describing: Polyline.self).lowercased() }

    // TODO: Write documentation
    public init(_ points: [Double], pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(key: "points", value: points.map(\.preciseString).joined(separator: " ")),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
