//
//  Element+HxDisinherit.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-disinherit` attribute allows you to control this automatic attribute inheritance. 
    ///
    /// An example scenario is to allow you to place an `hx-boost` on the body element of a page, but overriding that behavior in a specific part of the page to allow for more specific behaviors. 
    /// The default behavior for htmx is to “inherit” many attributes automatically: that is, an attribute such as `hx-target` may be placed on a parent element, and all child elements will inherit that target.
    ///
    /// For more information, see [hx-disinherit docs](https://htmx.org/attributes/hx-disinherit/)
    @discardableResult
    func hxDisinherit(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-disinherit", value, condition)
    }
}
