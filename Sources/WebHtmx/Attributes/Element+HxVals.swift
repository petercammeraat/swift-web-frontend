//
//  Element+HxVals.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-vals` attribute allows you to add to the parameters that will be submitted with an AJAX request.
    ///
    /// For more information, see [hx-vals docs](https://htmx.org/attributes/hx-vals/)
    @discardableResult
    func hxVals(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-vals", value, condition)
    }
}
