//
//  Element+Autofocus.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `autofocus` global attribute is a Boolean attribute indicating that an element should be focused on page load, or when the `<dialog>` that it is part of is displayed.
    ///
    /// For more information, see [autofocus docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autofocus)
    @discardableResult
    func autofocus(_ value: String? = nil, _ condition: Bool = true) -> Self {
        flagAttribute("autofocus", value, condition)
    }
}
