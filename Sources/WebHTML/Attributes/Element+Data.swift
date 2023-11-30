//
//  Element+Data.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `data-*` global attributes form a class of attributes called custom data attributes, that allow proprietary information to be exchanged between the HTML and its DOM representation by scripts.
    ///
    /// For more information, see [data-* docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/data-*)
    @discardableResult
    func data(key: String, _ value: String?, _ condition: Bool = true) -> Self {
        attribute("data-" + key, value, condition)
    }
}
