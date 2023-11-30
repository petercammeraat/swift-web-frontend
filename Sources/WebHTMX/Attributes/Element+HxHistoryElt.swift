//
//  Element+HxHistoryElt.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-history-elt` attribute allows you to specify the element that will be used to snapshot and restore page state during navigation.
    ///
    /// By default, the body tag is used. This is typically good enough for most setups, but you may want to narrow it down to a child element. Just make sure that the element is always visible in your application, or htmx will not be able to restore history navigation properly.
    ///
    /// For more information, see [hx-history-elt docs](https://htmx.org/attributes/hx-history-elt/)
    @discardableResult
    func hxHistoryElt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-history-elt", value, condition)
    }
}
