//
//  Element+Title.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `title` global attribute contains text representing advisory information related to the element it belongs to.
    ///
    /// For more information, see [title docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/title)
    @discardableResult
    func title(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("title", value, condition)
    }
}
