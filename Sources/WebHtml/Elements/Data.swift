//
//  Data.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<data>` HTML element links a given piece of content with a machine-readable translation. If the content is time- or date-related, the `<time>` element must be used.
///
/// For more information, see [data docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/data)
open class Data: StandardElement {
    override open class var name: String { .init(describing: Data.self).lowercased() }
}

public extension Data {
    /// Specifies the machine-readable translation of the content of the element
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
