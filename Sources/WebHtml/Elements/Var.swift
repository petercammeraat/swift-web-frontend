//
//  Var.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<var>` HTML element represents the name of a variable in a mathematical expression or a programming context.
///
/// It's typically presented using an italicized version of the current typeface, although that behavior is browser-dependent.
///
/// For more information, see [var docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/var)
open class Var: StandardElement {
    override open class var name: String { .init(describing: Var.self).lowercased() }
}
