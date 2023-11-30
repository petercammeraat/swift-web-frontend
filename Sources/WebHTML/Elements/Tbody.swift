//
//  Tbody.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<tbody>` HTML element encapsulates a set of table rows (`<tr>` elements), indicating that they comprise the body of the table (`<table>`).
///
/// For more information, see [tbody docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody)
open class Tbody: StandardElement {
    override open class var name: String { .init(describing: Tbody.self).lowercased() }
}

