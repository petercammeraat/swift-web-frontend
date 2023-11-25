//
//  Element+HxOn.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-on` attribute allows you to embed scripts inline to respond to events directly on an element; similar to the onevent properties found in HTML, such as onClick.
    ///
    /// For more information, see [hx-on docs](https://htmx.org/attributes/hx-on/)
    @discardableResult
    func hxOn(event: String, _ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-on:" + event, value, condition)
    }
}
