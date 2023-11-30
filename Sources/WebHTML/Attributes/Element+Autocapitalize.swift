//
//  Element+Autocapitalize.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `autocapitalize` global attribute is an enumerated attribute that controls whether and how text input is automatically capitalized as it is entered/edited by the user.
    ///
    /// For more information, see [autocapitalize docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autocapitalize)
    @discardableResult
    func autocapitalize(_ value: Autocapitalize?, _ condition: Bool = true) -> Self {
        attribute("autocapitalize", value != nil ? value?.rawValue : nil, condition)
    }
}

public enum Autocapitalize: String {
    /// No autocapitalization is applied (all letters default to lowercase)
    case off, none
    /// The first letter of each sentence defaults to a capital letter; all other letters default to lowercase
    case on, sentences
    /// The first letter of each word defaults to a capital letter; all other letters default to lowercase
    case words
    /// All letters should default to uppercase
    case characters
}
