//
//  Element+HxSelectOob.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `hx-select-oob` attribute allows you to select content from a response to be swapped in via an out-of-band swap.
    ///
    /// The value of this attribute is comma separated list of elements to be swapped out of band. This attribute is almost always paired with `hx-select`.
    ///
    /// For more information, see [hx-select-oob docs](https://htmx.org/attributes/hx-select-oob/)
    @discardableResult
    func hxSelectOob(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-select-oob", value, condition)
    }
}
