//
//  Picture.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The` <picture>` HTML element contains zero or more `<source>` elements and one `<img>` element to offer alternative versions of an image for different display/device scenarios.
///
/// The browser will consider each child `<source>` element and choose the best match among them. If no matches are found—or the browser doesn't support the `<picture>` element—the URL of the `<img>` element's src attribute is selected. The selected image is then presented in the space occupied by the `<img>` element.
///
/// For more information, see [picture docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/picture)
open class Picture: StandardElement {
    override open class var name: String { .init(describing: Picture.self).lowercased() }
}
