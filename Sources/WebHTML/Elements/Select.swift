//
//  Select.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<select>` HTML element represents a control that provides a menu of options.
///
/// For more information, see [select docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select)
open class Select: StandardElement {
    override open class var name: String { .init(describing: Select.self).lowercased() }
}

public extension Select {
    /// Specifies that the drop-down list should automatically get focus when the page loads
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies that a drop-down list should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Defines which form the drop-down list belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies that multiple options can be selected at once
    func multiple(_ condition: Bool = true) -> Self {
        flagAttribute("multiple", nil, condition)
    }
    
    /// Defines a name for the drop-down list
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies that the user is required to select a value before submitting the form
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Defines the number of visible options in a drop-down list
    func size(_ value: Int) -> Self {
        attribute("size", String(value))
    }
}
