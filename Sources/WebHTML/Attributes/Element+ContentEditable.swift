//
//  Element+ContentEditable.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `contenteditable` global attribute is an enumerated attribute indicating if the element should be editable by the user. If so, the browser modifies its widget to allow editing.
    ///
    /// For more information, see [contenteditable docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contenteditable)
    @discardableResult
    func contentEditable(_ value: ContentEditable?, _ condition: Bool = true) -> Self {
        attribute("contenteditable", value != nil ? value?.rawValue : nil, condition)
    }
}

public enum ContentEditable: String {
    /// Indicates that the element is editable.
    case `true`
    /// Indicates that the element is not editable
    case `false`
    /// Indicates that the element's raw text is editable, but rich text formatting is disabled.
    case plaintextOnly = "plaintext-only"
}
