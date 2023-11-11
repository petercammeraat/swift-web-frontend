//
//  Legend.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<legend>` HTML element represents a caption for the content of its parent `<fieldset>`.
///
/// For more information, see [legend docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/legend)
open class Legend: StandardElement {
    override open class var name: String { .init(describing: Legend.self).lowercased() }
}
