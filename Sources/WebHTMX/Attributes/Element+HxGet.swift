//
//  Element+HxGet.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-get` attribute will cause an element to issue a GET to the specified URL and swap the HTML into the DOM using a swap strategy:
    ///
    /// For more information, see [hx-get docs](https://htmx.org/attributes/hx-get/)
    @discardableResult
    func hxGet(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-get", value, condition)
    }
}
