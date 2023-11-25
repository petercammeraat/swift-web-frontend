//
//  Element+HxInclude.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    // TODO: use enum
    /// The `hx-include` attribute allows you to include additional element values in an AJAX request.
    ///
    /// For more information, see [hx-include docs](https://htmx.org/attributes/hx-include/)
    @discardableResult
    func hxInclude(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-include", value, condition)
    }
}
