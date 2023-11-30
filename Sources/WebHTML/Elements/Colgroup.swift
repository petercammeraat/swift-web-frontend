//
//  Colgroup.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<colgroup>` HTML element defines a group of columns within a table.
///
/// For more information, see [colgroup docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/colgroup)
open class Colgroup: StandardElement {
    override open class var name: String { .init(describing: Colgroup.self).lowercased() }
}

public extension Colgroup {
    /// Specifies the number of columns a column group should span
    func span(_ value: Int) -> Self {
        attribute("span", String(value))
    }
}
