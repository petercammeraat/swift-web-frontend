//
//  Element+HxBoost.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `hx-boost` attribute allows you to “boost” normal anchors and form tags to use AJAX instead.
    ///
    /// This has the nice fallback that, if the user does not have javascript enabled, the site will continue to work.
    ///
    /// For more information, see [hx-boost docs](https://htmx.org/attributes/hx-boost/)
    @discardableResult
    func hxBoost(_ value: Bool?, _ condition: Bool = true) -> Self {
        attribute("hx-boost", value != nil ? String(value!) : nil, condition)
    }
}
