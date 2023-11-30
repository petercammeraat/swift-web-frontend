//
//  Noscript.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<noscript>` HTML element defines a section of HTML to be inserted if a script type on the page is unsupported or if scripting is currently turned off in the browser.
///
/// For more information, see [noscript docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript)
open class Noscript: StandardElement {
    override open class var name: String { .init(describing: Noscript.self).lowercased() }
}
