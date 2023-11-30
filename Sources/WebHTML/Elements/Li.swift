//
//  Li.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<li>` HTML element is used to represent an item in a list. It must be contained in a parent element: an ordered list (`<ol>`), an unordered list (`<ul>`), or a menu (`<menu>`).
/// In menus and unordered lists, list items are usually displayed using bullet points. In ordered lists, they are usually displayed with an ascending counter on the left, such as a number or letter.
///
/// For more information, see [li docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/li)
open class Li: StandardElement {
    override open class var name: String { .init(describing: Li.self).lowercased() }
}

public extension Li {
    /// Only for `<ol>` lists. Specifies the start value of a list item. The following list items will increment from that number
    func value(_ value: Int) -> Self {
        attribute("value", String(value))
    }
}
