//
//  Kbd.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<kbd>` HTML element represents a span of inline text denoting textual user input from a keyboard, voice input, or any other text entry device. 
/// By convention, the user agent defaults to rendering the contents of a `<kbd>` element using its default monospace font, although this is not mandated by the HTML standard.
///
/// For more information, see [kbd docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/kbd)
open class Kbd: StandardElement {
    override open class var name: String { .init(describing: Kbd.self).lowercased() }
}
