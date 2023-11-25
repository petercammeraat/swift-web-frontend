//
//  Element+HxValidate.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The hx-validate attribute will cause an element to validate itself by way of the HTML5 Validation API before it submits a request.
    ///
    /// Form elements do this by default, but other elements do not.
    ///
    /// For more information, see [hx-validate docs](https://htmx.org/attributes/hx-validate/)
    @discardableResult
    func hxValidate(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-validate", value, condition)
    }
}
