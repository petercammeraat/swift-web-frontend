//
//  Map.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<map>` HTML element is used with `<area>` elements to define an image map (a clickable link area).
///
/// For more information, see [map docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/map)
open class Map: StandardElement {
    override open class var name: String { .init(describing: Map.self).lowercased() }
        
    public init(name: String, @ElementBuilder _ builder: () -> Element) {
        super.init([builder()])
        setAttributes([
            .init(key: "name", value: name)
        ])
    }
}

public extension Map {
    /// Specifies the name of an `<input>` element
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
}
