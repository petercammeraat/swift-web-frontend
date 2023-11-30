//
//  Element+Hidden.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hidden` global attribute is an enumerated attribute indicating that the browser should not render the contents of the element.
    ///
    /// For example, it can be used to hide elements of the page that can't be used until the login process has been completed.
    ///
    /// For more information, see [hidden docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/hidden)
    @discardableResult
    func hidden(_ value: Bool? = nil, _ condition: Bool = true) -> Self {
        attribute("hidden", value?.description, condition)
    }
}
