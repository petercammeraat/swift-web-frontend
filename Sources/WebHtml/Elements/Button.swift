//
//  Button.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<button>` HTML element is an interactive element activated by a user with a mouse, keyboard, finger, voice command, or other assistive technology. Once activated, it then performs an action, such as submitting a form or opening a dialog.
///
/// For more information, see [button docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button)
open class Button: StandardElement {
    override open class var name: String { .init(describing: Button.self).lowercased() }
}

public extension Button {
    enum `Type`: String {
        /// The button is a clickable button
        case button
        /// The button is a submit button (submits form-data)
        case submit
        /// The button is a reset button (resets the form-data to its initial values)
        case reset
    }

    /// Specifies that a button should automatically get focus when the page loads
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies that a button should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies which form the button belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies where to send the form-data when a form is submitted. Only for type="submit"
    func formaction(_ value: String) -> Self {
        attribute("formaction", value)
    }
    
    /// Specifies how form-data should be encoded before sending it to a server. Only for type="submit"
    func formenctype(_ value: Enctype = .urlEncoded) -> Self {
        attribute("formenctype", value.rawValue)
    }
    
    /// Specifies how to send the form-data (which HTTP method to use). Only for type="submit"
    func formmethod(_ value: MethodHtml = .get) -> Self {
        attribute("formmethod", value.rawValue)
    }
    
    /// Specifies that the form-data should not be validated on submission. Only for type="submit"
    func formnovalidate(_ condition: Bool = true) -> Self {
        flagAttribute("formnovalidate", nil, condition)
    }
    
    /// Specifies where to display the response after submitting the form. Only for type="submit"
    func target(_ value: TargetFrame) -> Self {
        attribute("target", value.rawValue)
    }
    
    /// Specifies a name for the button
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies the type of button
    func type(_ value: Type) -> Self {
        attribute("type", value.rawValue)
    }
    
    /// Specifies an initial value for the button
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
