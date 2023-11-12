//
//  Search.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<search>` HTML element is a container representing the parts of the document or application with form controls or other content related to performing a search or filtering operation.
///
/// The `<search>` element semantically identifies the purpose of the element's contents as having search or filtering capabilities. The search or filtering functionality can be for the website or application, the current web page or document, or the entire Internet or subsection thereof.
///
/// For more information, see [search docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/search)
open class Search: StandardElement {
    override open class var name: String { .init(describing: Search.self).lowercased() }
}
