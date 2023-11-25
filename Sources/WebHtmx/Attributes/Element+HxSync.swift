//
//  Element+HxSync.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-sync` attribute allows you to synchronize AJAX requests between multiple elements.
    ///
    /// The `hx-sync` attribute consists of a CSS selector to indicate the element to synchronize on, followed optionally by a colon and then by an optional syncing strategy.
    ///
    /// For more information, see [hx-sync docs](https://htmx.org/attributes/hx-sync/)
    @discardableResult
    func hxSync(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-sync", value, condition)
    }
}
