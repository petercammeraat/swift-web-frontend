//
//  Element+Spellcheck.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase
public extension Element {
    /// The `spellcheck` global attribute is an enumerated attribute that defines whether the element may be checked for spelling errors.
    ///
    /// For more information, see [spellcheck docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/spellcheck)
    @discardableResult
    func spellcheck(_ value: Bool?, _ condition: Bool = true) -> Self {
        attribute("spellcheck", value != nil ? String(value!) : nil, condition)
    }
}
