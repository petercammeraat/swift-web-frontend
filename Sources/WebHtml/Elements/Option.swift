//
//  Option.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<option>` HTML element is used to define an item contained in a `<select>`, an `<optgroup>`, or a `<datalist>` element. As such, `<option>` can represent menu items in popups and other lists of items in an HTML document.
///
/// For more information, see [option docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option)
open class Option: StandardElement {
    override open class var name: String { .init(describing: Option.self).lowercased() }
}

public extension Option {
    /// Specifies that an option should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies a shorter label for an option
    func label(_ value: String) -> Self {
        attribute("label", value)
    }
    
    /// Specifies that an option should be pre-selected when the page loads
    func selected(_ condition: Bool = true) -> Self {
        flagAttribute("selected", nil, condition)
    }
    
    /// Specifies the value to be sent to a server
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
