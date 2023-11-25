//
//  Element+HxConfirm.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-confirm` attribute allows you to confirm an action before issuing a request.
    ///
    /// This can be useful in cases where the action is destructive and you want to ensure that the user really wants to do it.
    ///
    /// For more information, see [hx-confirm docs](https://htmx.org/attributes/hx-confirm/)
    @discardableResult
    func hxConfirm(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-confirm", value, condition)
    }
}
