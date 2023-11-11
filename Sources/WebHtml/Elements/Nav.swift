//
//  Nav.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<nav>` HTML element represents a section of a page whose purpose is to provide navigation links, either within the current document or to other documents. Common examples of navigation sections are menus, tables of contents, and indexes.
///
/// For more information, see [nav docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav)
open class Nav: StandardElement {
    override open class var name: String { .init(describing: Nav.self).lowercased() }
}
