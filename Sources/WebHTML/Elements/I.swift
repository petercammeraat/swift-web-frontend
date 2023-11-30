//
//  I.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<i>` HTML element represents a range of text that is set off from the normal text for some reason, such as idiomatic text, technical terms, taxonomical designations, among others. Historically, these have been presented using italicized type, which is the original source of the `<i>` naming of this element.
///
/// For more information, see [i docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/i)
open class I: StandardElement {
    override open class var name: String { .init(describing: I.self).lowercased() }
}
