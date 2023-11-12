//
//  Output.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<output>` HTML element is a container element into which a site or app can inject the results of a calculation or the outcome of a user action.
///
/// For more information, see [output docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output)
open class Output: StandardElement {
    override open class var name: String { .init(describing: Output.self).lowercased() }
}

public extension Output {
    /// Specifies the relationship between the result of the calculation, and the elements used in the calculation
    func `for`(_ value: String) -> Self {
        attribute("for", value)
    }
    
    /// Specifies which form the output element belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies a name for the output element
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
}
