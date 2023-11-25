//
//  Element+Popover.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `popover` global attribute is used to designate an element as a popover element.
    ///
    /// For more information, see [popover docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
    @discardableResult
    func popover(_ value: Popover? = .auto, _ condition: Bool = true) -> Self {
        attribute("translate", value?.rawValue, condition)
    }
}

public enum Popover: String {
    /// Specifies that the content of the element should be translated
    case auto
    /// Specifies that the content of the element must not be translated
    case manual
}
