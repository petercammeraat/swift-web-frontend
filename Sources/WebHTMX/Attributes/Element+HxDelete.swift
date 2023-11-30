//
//  Element+HxDelete.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-delete` attribute will cause an element to issue a DELETE to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-delete docs](https://htmx.org/attributes/hx-delete/)
    @discardableResult
    func hxDelete(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-delete", value, condition)
    }
}
