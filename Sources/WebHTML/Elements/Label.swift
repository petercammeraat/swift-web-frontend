//
//  Label.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<label>` HTML element represents a caption for an item in a user interface.
///
/// For more information, see [label docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/label)
open class Label: StandardElement {
    override open class var name: String { .init(describing: Label.self).lowercased() }
}

public extension Label {
    /// Specifies the id of the form element the label should be bound to
    func `for`(_ value: String) -> Self {
        attribute("for", value)
    }
    
    /// Specifies which form the label belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
}
