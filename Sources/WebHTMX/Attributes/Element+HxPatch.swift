//
//  Element+HxPatch.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-patch` attribute will cause an element to issue a PATCH to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-patch docs](https://htmx.org/attributes/hx-patch/)
    @discardableResult
    func hxPatch(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-patch", value, condition)
    }
}
