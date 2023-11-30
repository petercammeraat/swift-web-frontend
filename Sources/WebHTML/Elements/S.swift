//
//  S.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<s>` HTML element renders text with a strikethrough, or a line through it.
///
/// Use the `<s>` element to represent things that are no longer relevant or no longer accurate. However, `<s>` is not appropriate when indicating document edits; for that, use the `<del>` and `<ins>` elements, as appropriate.
///
/// For more information, see [s docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/s)
open class S: StandardElement {
    override open class var name: String { .init(describing: S.self).lowercased() }
}
