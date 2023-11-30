//
//  Text.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The SVG `<text>` element draws a graphics element consisting of text. It's possible to apply a gradient, pattern, clipping path, mask, or filter to `<text>`, like any other SVG graphics element.
/// 
/// For more information, see [text docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/Text)
open class Text: StandardElement {
    override open class var name: String { .init(describing: Text.self).lowercased() }
}

public extension Text{
    /// The x coordinate of the starting point of the text baseline.
    func x(_ value: Double = 0) -> Self {
        attribute("x", value.preciseString)
    }

    /// The y coordinate of the starting point of the text baseline.
    func y(_ value: Double = 0) -> Self {
        attribute("y", value.preciseString)
    }
}
