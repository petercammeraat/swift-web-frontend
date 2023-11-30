//
//  Element+HxHistory.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// Set the `hx-history` attribute to false on any element in the current document, or any html fragment loaded into the current document by htmx, to prevent sensitive data being saved to the localStorage cache when htmx takes a snapshot of the page state.
    ///
    /// For more information, see [hx-history docs](https://htmx.org/attributes/hx-history/)
    @discardableResult
    func hxHistory(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-history", value, condition)
    }
}
