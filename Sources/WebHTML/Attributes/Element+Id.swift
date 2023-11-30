//
//  Element+Id.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `id` global attribute defines an identifier (ID) which must be unique in the whole document.
    ///
    /// Its purpose is to identify the element when linking (using a fragment identifier), scripting, or styling (with CSS).
    ///
    /// For more information, see [id docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id)
    @discardableResult
    func `id`(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("id", value, condition)
    }
}
