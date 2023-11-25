//
//  Element+HxIndicator.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-indicator` attribute allows you to specify the element that will have the htmx-request class added to it for the duration of the request. This can be used to show spinners or progress indicators while the request is in flight.
    ///
    /// For more information, see [hx-include docs](https://htmx.org/attributes/hx-include/)
    @discardableResult
    func hxIndicator(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-indicator", value, condition)
    }
}