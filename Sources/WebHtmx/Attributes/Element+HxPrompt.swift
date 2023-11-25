//
//  Element+HxPrompt.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-prompt` attribute allows you to show a prompt before issuing a request. The value of the prompt will be included in the request in the HX-Prompt header.
    ///
    /// For more information, see [hx-prompt docs](https://htmx.org/attributes/hx-prompt/)
    @discardableResult
    func hxPrompt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-prompt", value, condition)
    }
}
