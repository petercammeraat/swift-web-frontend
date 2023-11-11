//
//  Menu.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<menu>` HTML element is described in the HTML specification as a semantic alternative to `<ul>`, but treated by browsers (and exposed through the accessibility tree) as no different than `<ul>`. It represents an unordered list of items (which are represented by `<li>` elements).
///
/// For more information, see [menu docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/menu)
open class Menu: StandardElement {
    override open class var name: String { .init(describing: Menu.self).lowercased() }
}
