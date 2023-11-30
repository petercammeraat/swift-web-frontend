//
//  Figure.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<figure>` HTML element represents self-contained content, potentially with an optional caption, which is specified using the `<figcaption>` element. The figure, its caption, and its contents are referenced as a single unit.
///
/// For more information, see [figure docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figure)
open class Figure: StandardElement {
    override open class var name: String { .init(describing: Figure.self).lowercased() }
}
