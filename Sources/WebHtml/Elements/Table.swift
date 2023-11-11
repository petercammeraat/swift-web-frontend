//
//  Table.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<table>` HTML element represents tabular data — that is, information presented in a two-dimensional table comprised of rows and columns of cells containing data.
///
/// For more information, see [table docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table)
open class Table: StandardElement {
    override open class var name: String { .init(describing: Table.self).lowercased() }
}