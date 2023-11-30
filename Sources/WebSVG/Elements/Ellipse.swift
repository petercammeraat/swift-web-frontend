//
//  Ellipse.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The `<ellipse>` element is an SVG basic shape, used to create ellipses based on a center coordinate, and both their x and y radius.
///
/// For more information, see [ellipse docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse)
open class Ellipse: StandardElement {
    override open class var name: String { .init(describing: Ellipse.self).lowercased() }

    // TODO: Write documentation
    public init(
        cx: Double,
        cy: Double,
        rx: Double,
        ry: Double,
        pathLength: Double? = nil
    ) {
        super.init()
        setAttributes([
            .init(key: "cx", value: cx.preciseString),
            .init(key: "cy", value: cy.preciseString),
            .init(key: "rx", value: rx.preciseString),
            .init(key: "ry", value: ry.preciseString),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
