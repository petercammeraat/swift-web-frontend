//
//  Element+HxTrigger.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    // TODO: this could be an enum, maybe?
    /// The `hx-trigger` attribute allows you to specify what triggers an AJAX request.
    ///
    /// For more information, see [hx-trigger docs](https://htmx.org/attributes/hx-trigger/)
    @discardableResult
    func hxTrigger(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-trigger", value, condition)
    }
}
