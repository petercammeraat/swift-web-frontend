//
//  Element+HxHeaders.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-headers` attribute allows you to add to the headers that will be submitted with an AJAX request.
    ///
    /// For more information, see [hx-headers docs](https://htmx.org/attributes/hx-headers/)
    @discardableResult
    func hxHeaders(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-headers", value, condition)
    }
}
