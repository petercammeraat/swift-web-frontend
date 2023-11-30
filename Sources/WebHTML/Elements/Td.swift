//
//  Td.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<td>` HTML element defines a cell of a table that contains data. It participates in the table model.
///
/// For more information, see [td docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td)
open class Td: StandardElement {
    override open class var name: String { .init(describing: Td.self).lowercased() }
}

public extension Td {
    /// Specifies the number of columns a data cell should span
    func colspan(_ value: Int) -> Self {
        attribute("colspan", String(value))
    }
}
