//
//  Element+HxSelect.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-select` attribute allows you to select the content you want swapped from a response.
    ///
    /// The value of this attribute is a CSS query selector of the element or elements to select from the response.
    ///
    /// For more information, see [hx-select docs](https://htmx.org/attributes/hx-select/)
    @discardableResult
    func hxSelect(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-select", value, condition)
    }
}
