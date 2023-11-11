//
//  Autocapitalize.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

/// The `autocapitalize` global attribute is an enumerated attribute that controls whether and how text input is automatically capitalized as it is entered/edited by the user.
///
/// For more information, see [autocapitalize docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autocapitalize)
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
