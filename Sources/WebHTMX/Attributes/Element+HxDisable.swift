//
//  Element+HxDisable.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-disable` attribute will disable htmx processing for a given element and all its children.
    ///
    /// This can be useful as a backup for HTML escaping, when you include user generated content in your site, and you want to prevent malicious scripting attacks. The value of the tag is ignored, and it cannot be reversed by any content beneath it.
    ///
    /// For more information, see [hx-disable docs](https://htmx.org/attributes/hx-disable/)
    @discardableResult
    func hxDisable(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-disable", value, condition)
    }
}
