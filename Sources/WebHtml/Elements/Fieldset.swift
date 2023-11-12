//
//  Fieldset.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<fieldset>` HTML element is used to group several controls as well as labels (`<label>`) within a web form.
///
/// For more information, see [fieldset docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fieldset)
open class Fieldset: StandardElement {
    override open class var name: String { .init(describing: Fieldset.self).lowercased() }
}

public extension Fieldset {
    /// Specifies that a group of related form elements should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies which form the fieldset belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies a name for the fieldset
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
}
