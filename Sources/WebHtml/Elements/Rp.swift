//
//  Rp.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<rp>` HTML element is used to provide fall-back parentheses for browsers that do not support display of ruby annotations using the `<ruby>` element.
///
/// One `<rp>` element should enclose each of the opening and closing parentheses that wrap the `<rt>` element that contains the annotation's text.
///
/// For more information, see [rp docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/rp)
open class Rp: StandardElement {
    override open class var name: String { .init(describing: Rp.self).lowercased() }
}
