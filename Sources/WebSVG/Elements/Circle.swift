//
//  Circle.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The `<circle>` SVG element is an SVG basic shape, used to draw circles based on a center point and a radius.
///
/// For more information, see [circle docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle)
open class Circle: StandardElement {
    override open class var name: String { .init(describing: Circle.self).lowercased() }

    // TODO: Write documentation
    public init(
        cx: Double,
        cy: Double,
        r: Double,
        pathLength: Double? = nil
    ) {
        super.init()
        setAttributes([
            .init(key: "cx", value: cx.preciseString),
            .init(key: "cy", value: cy.preciseString),
            .init(key: "r", value: r.preciseString),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
