//
//  Tbody.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<tbody>` HTML element encapsulates a set of table rows (`<tr>` elements), indicating that they comprise the body of the table (`<table>`).
///
/// For more information, see [tbody docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody)
open class Tbody: StandardElement {
    override open class var name: String { .init(describing: Tbody.self).lowercased() }
}
