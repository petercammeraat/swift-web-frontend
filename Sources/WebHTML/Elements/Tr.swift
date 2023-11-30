//
//  Tr.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<tr>` HTML element defines a row of cells in a table.
///
/// The row's cells can then be established using a mix of `<td>` (data cell) and `<th>` (header cell) elements.
///
/// For more information, see [tr docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr)
open class Tr: StandardElement {
    override open class var name: String { .init(describing: Tr.self).lowercased() }
}
