//
//  Pre.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<pre>` HTML element represents preformatted text which is to be presented exactly as written in the HTML file.
///
/// The text is typically rendered using a non-proportional, or monospaced, font. Whitespace inside this element is displayed as written.
/// 
/// For more information, see [pre docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/pre)
open class Pre: StandardElement {
    override open class var name: String { .init(describing: Pre.self).lowercased() }
}
