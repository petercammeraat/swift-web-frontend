//
//  Caption.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<caption>` HTML element specifies the caption (or title) of a table.
///
/// For more information, see [caption docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption)
open class Caption: StandardElement {
    override open class var name: String { .init(describing: Caption.self).lowercased() }
}
