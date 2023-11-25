//
//  Element+HxPut.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-put` attribute will cause an element to issue a PUT to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-put docs](https://htmx.org/attributes/hx-put/)
    @discardableResult
    func hxPut(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-put", value, condition)
    }
}
