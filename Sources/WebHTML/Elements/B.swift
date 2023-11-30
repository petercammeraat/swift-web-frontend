//
//  B.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<b>` HTML element is used to draw the reader's attention to the element's contents, which are not otherwise granted special importance. This was formerly known as the Boldface element, and most browsers still draw the text in boldface.
/// However, you should not use `<b>` for styling text or granting importance. If you wish to create boldface text, you should use the CSS font-weight property. If you wish to indicate an element is of special importance, you should use the `<strong>` element.
///
/// For more information, see [b docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/b)
open class B: StandardElement {
    override open class var name: String { .init(describing: B.self).lowercased() }
}
