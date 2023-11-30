//
//  Element+HxDisableElt.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-disabled-elt` attribute allows you to specify elements that will have the disabled attribute added to them for the duration of the request.
    ///
    /// The value of this attribute is a CSS query selector of the element or elements to apply the class to, or the keyword closest, followed by a CSS selector, which will find the closest ancestor element or itself, that matches the given CSS selector (e.g. closest tr), or the keyword `this`.
    ///
    /// For more information, see [hx-disable-elt docs](https://htmx.org/attributes/hx-disable-elt/)
    @discardableResult
    func hxDisableElt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-disable-elt", value, condition)
    }
}
