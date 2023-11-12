//
//  Ins.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<ins>` HTML element represents a range of text that has been added to a document. You can use the `<del>` element to similarly represent a range of text that has been deleted from the document.
///
/// For more information, see [ins docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ins)
open class Ins: StandardElement {
    override open class var name: String { .init(describing: Ins.self).lowercased() }
}
