//
//  Canvas.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// Use the HTML `<canvas>` element with either the canvas scripting API or the WebGL API to draw graphics and animations.
///
/// For more information, see [canvas docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas)
open class Canvas: StandardElement {
    override open class var name: String { .init(describing: Canvas.self).lowercased() }
}

public extension Canvas {
    /// Specifies the height of the canvas. Default value is 150
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies the width of the canvas Default value is 300
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
