//
//  Header.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<header>` HTML element represents introductory content, typically a group of introductory or navigational aids. It may contain some heading elements but also a logo, a search form, an author name, and other elements.
///
/// For more information, see [header docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header)
open class Header: StandardElement {
    override open class var name: String { .init(describing: Header.self).lowercased() }
}
