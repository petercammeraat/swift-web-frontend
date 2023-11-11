//
//  H5.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<h1>` to `<h6>` HTML elements represent six levels of section headings. `<h1>` is the highest section level and `<h6>` is the lowest. By default, all heading elements create a block-level box in the layout, starting on a new line and taking up the full width available in their containing block.
///
/// For more information, see [heading elements docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
open class H5: StandardElement {
    override open class var name: String { .init(describing: H5.self).lowercased() }
}
