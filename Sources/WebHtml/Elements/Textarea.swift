//
//  Textarea.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<textarea>` HTML element represents a multi-line plain-text editing control.
///
/// Useful when you want to allow users to enter a sizeable amount of free-form text, for example a comment on a review or feedback form.
///
/// For more information, see [textarea docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea)
open class Textarea: StandardElement {
    override open class var name: String { .init(describing: Textarea.self).lowercased() }
}

public extension Textarea {
    enum Wrap: String {
        /// The text in the textarea is not wrapped when submitted in a form. This is default
        case soft
        /// The text in the textarea is wrapped (contains newlines) when submitted in a form. When "hard" is used, the cols attribute must be specified
        case hard
    }

    /// Specifies that a text area should automatically get focus when the page loads
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies the visible width of a text area
    func cols(_ value: Int) -> Self {
        attribute("cols", String(value))
    }
    
    /// Specifies that the text direction of the textarea will be submitted
    func dirname(_ value: String) -> Self {
        attribute("dirname", value)
    }
    
    /// Specifies that a text area should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies which form the text area belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the maximum number of characters allowed in the text area
    func maxlength(_ value: Int) -> Self {
        attribute("maxlength", String(value))
    }

    /// Specifies a name for a text area
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies a short hint that describes the expected value of a text area
    func placeholder(_ value: String?) -> Self {
        attribute("placeholder", value)
    }
    
    /// Specifies that a text area should be read-only
    func readonly(_ condition: Bool = true) -> Self {
        flagAttribute("readonly", nil, condition)
    }
    
    /// Specifies that a text area is required/must be filled out
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Specifies the visible width of a text area
    func rows(_ value: Int) -> Self {
        attribute("rows", String(value))
    }
    
    /// Specifies how the text in a text area is to be wrapped when submitted in a form
    func wrap(_ value: Wrap) -> Self {
        attribute("wrap", value.rawValue)
    }
}
