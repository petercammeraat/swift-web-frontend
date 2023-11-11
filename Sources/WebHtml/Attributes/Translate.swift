//
//  Translate.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

/// The translate global attribute is an enumerated attribute that is used to specify whether an element's translatable attribute values and its Text node children should be translated when the page is localized, or whether to leave them unchanged.
///
/// For more information, see [translate docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/translate)
public enum Translate: String {
    /// Specifies that the content of the element should be translated
    case yes
    /// Specifies that the content of the element must not be translated
    case no
}
