//
//  Tfoot.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<tfoot>` HTML element defines a set of rows summarizing the columns of the table.
///
/// For more information, see [tfoot docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tfoot)
open class Tfoot: StandardElement {
    override open class var name: String { .init(describing: Tfoot.self).lowercased() }
}
