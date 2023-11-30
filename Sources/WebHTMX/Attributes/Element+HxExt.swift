//
//  Element+HxExt.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The hx-ext attribute enables an htmx extension for an element and all its children.
    ///
    /// The value can be a single extension name or a comma separated list of extensions to apply.
    ///
    /// The hx-ext tag may be placed on parent elements if you want a plugin to apply to an entire swath of the DOM, and on the body tag for it to apply to all htmx requests.
    ///
    /// For more information, see [hx-ext docs](https://htmx.org/attributes/hx-ext/)
    @discardableResult
    func hxExt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-ext", value, condition)
    }
}
