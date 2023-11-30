//
//  Mark.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<mark>` HTML element represents text which is marked or highlighted for reference or notation purposes due to the marked passage's relevance in the enclosing context.
///
/// For more information, see [mark docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark)
open class Mark: StandardElement {
    override open class var name: String { .init(describing: Mark.self).lowercased() }
}
