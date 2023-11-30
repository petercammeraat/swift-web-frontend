//
//  Source.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<source>` HTML element specifies one or more media resources for the `<picture>`, `<audio>`, and `<video>` elements.
///
/// It is a void element, which means that it has no content and does not require a closing tag. This element is commonly used to offer the same media content in multiple file formats in order to provide compatibility with a broad range of browsers given their differing support for image file formats and media file formats.
///
/// For more information, see [source docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source)
open class Source: EmptyElement {
    override open class var name: String { .init(describing: Source.self).lowercased() }
}

public extension Source {
    /// Accepts any valid media query that would normally be defined in a CSS
    func media(_ value: String) -> Self {
        attribute("media", value)
    }

    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: MediaQuery...) -> Self {
        return media(queries)
    }
    
    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: [MediaQuery]) -> Self {
        return media(queries.map(\.value).joined(separator: " and "))
    }
    
    /// Specifies image sizes for different page layouts
    func sizes(value: String) -> Self {
        attribute("sizes", value)
    }
    
    /// Required when `<source>` is used in `<audio>` and `<video>`. Specifies the URL of the media file
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Required when `<source>` is used in `<picture>`. Specifies the URL of the image to use in different situations
    func srcset(_ value: String) -> Self {
        attribute("srcset", value)
    }
    
    /// Specifies the MIME-type of the resource
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
}
