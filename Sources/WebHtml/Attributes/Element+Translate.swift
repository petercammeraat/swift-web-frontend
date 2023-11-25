//
//  Element+Translate.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `translate` global attribute is an enumerated attribute that is used to specify whether an element's translatable attribute values and its Text node children should be translated when the page is localized, or whether to leave them unchanged.
    ///
    /// For more information, see [translate docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/translate)
    @discardableResult
    func translate(_ value: Translate?, _ condition: Bool = true) -> Self {
        attribute("translate", value?.rawValue, condition)
    }
}

public enum Translate: String {
    /// Specifies that the content of the element should be translated
    case yes
    /// Specifies that the content of the element must not be translated
    case no
}
