//
//  Optgroup.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<optgroup>` HTML element creates a grouping of options within a `<select>` element.
///
/// For more information, see [optgroup docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup)
open class Optgroup: StandardElement {
    override open class var name: String { .init(describing: Optgroup.self).lowercased() }
}

public extension Optgroup {
    /// Specifies that an option-group should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies a label for an option-group
    func label(_ value: String) -> Self {
        attribute("label", value)
    }
}
