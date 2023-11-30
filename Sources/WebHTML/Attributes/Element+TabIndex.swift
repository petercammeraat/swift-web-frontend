//
//  Element+TabIndex.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `tabindex` global attribute allows developers to make HTML elements focusable, allow or prevent them from being sequentially focusable (usually with the Tab key, hence the name) and determine their relative ordering for sequential focus navigation.
    ///
    /// For more information, see [tabindex docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/tabindex)
    @discardableResult
    func tabindex(_ value: Int?, _ condition: Bool = true) -> Self {
        attribute("tabindex", value != nil ? String(value!) : nil, condition)
    }
}
