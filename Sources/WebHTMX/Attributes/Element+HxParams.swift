//
//  Element+HxParams.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    // TODO: use num
    /// The `hx-params` attribute allows you to filter the parameters that will be submitted with an AJAX request.
    ///
    /// For more information, see [hx-params docs](https://htmx.org/attributes/hx-params/)
    @discardableResult
    func hxParams(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-params", value, condition)
    }
}
