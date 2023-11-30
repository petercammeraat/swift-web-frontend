//
//  Element+HxRequest.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    // TODO: use enum
    /// The `hx-request` attribute allows you to configure various aspects of the request via the following attributes.
    ///
    /// For more information, see [hx-request docs](https://htmx.org/attributes/hx-request/)
    @discardableResult
    func hxRequest(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-request", value, condition)
    }
}
