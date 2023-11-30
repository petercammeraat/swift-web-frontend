//
//  SVG.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

/// The `<svg>` element is a container that defines a new coordinate system and viewport. 
///
/// It is used as the outermost element of SVG documents, but it can also be used to embed an SVG fragment inside an SVG or HTML document.
///
/// For more information, see [svg docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg)
open class SVG: StandardElement {
    override open class var name: String { .init(describing: SVG.self).lowercased() }
}

public extension SVG {
    func width(_ value: Int) -> Self {
        attribute("width", String(value))
    }

    func height(_ value: Int) -> Self {
        attribute("height", String(value))
    }

    func viewBox(minX: Int, minY: Int, width: Int, height: Int) -> Self {
        let value = [minX, minY, width, height].map(String.init).joined(separator: " ")
        return attribute("viewBox", value)
    }

    func fill(_ value: String) -> Self {
        attribute("fill", value)
    }

    func stroke(_ value: String) -> Self {
        attribute("stroke", value)
    }

    func strokeWidth(_ value: Int) -> Self {
        attribute("stroke-width", String(value))
    }

    func strokeLinecap(_ value: String) -> Self {
        attribute("stroke-linecap", value)
    }

    func strokeLinejoin(_ value: String) -> Self {
        attribute("stroke-linejoin", value)
    }
}
