//
//  Element+HxPost.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `hx-post` attribute will cause an element to issue a POST to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-post docs](https://htmx.org/attributes/hx-post/)
    @discardableResult
    func hxPost(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-post", value, condition)
    }
}
