//
//  Thead.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<thead>` HTML element defines a set of rows defining the head of the columns of the table.
///
/// For more information, see [thead docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/thead)
open class Thead: StandardElement {
    override open class var name: String { .init(describing: Thead.self).lowercased() }
}
