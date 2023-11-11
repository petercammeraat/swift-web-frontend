//
//  Title.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<title>` HTML element defines the document's title that is shown in a browser's title bar or a page's tab.
///
/// It only contains text; tags within the element are ignored.
///
/// For more information, see [title docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/title)
open class Title: StandardElement {
    override open class var name: String { .init(describing: Title.self).lowercased() }
}
