//
//  Img.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The <img> HTML element embeds an image into the document.
///
/// The `src` attribute is **required**, and contains the path to the image you want to embed.
///
/// The `alt` attribute holds a textual replacement for the image, which is mandatory and **incredibly useful** for accessibility — screen readers read the attribute value out to their users so they know what the image means. Alt text is also displayed on the page if the image can't be loaded for some reason: for example, network errors, content blocking, or linkrot.
///
/// For more information, see [img docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img)
open class Img: EmptyElement {
    override open class var name: String { .init(describing: Img.self).lowercased() }
    
    public init(src: String, alt: String) {
        super.init()
        setAttributes([
            .init(key: "src", value: src),
            .init(key: "alt", value: alt),
        ])
    }
}

public extension Img {
    /// Specifies an alternate text for an image
    func alt(_ value: String) -> Self {
        attribute("alt", value)
    }
    
    /// Allow images from third-party sites that allow cross-origin access to be used with canvas
    func crossorigin(_ value: CrossOrigin) -> Self {
        attribute("crossorigin", value.rawValue)
    }
    
    /// Specifies the height of an image
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies an image as a server-side image map
    func ismap(_ condition: Bool = true) -> Self {
        flagAttribute("ismap", nil, condition)
    }
    
    /// Specifies whether a browser should load an image immediately or to defer loading of images until some conditions are met
    func loading(_ value: Loading) -> Self {
        attribute("loading", value.rawValue)
    }
    
    /// Specifies a URL to a detailed description of an image
    func longdesc(_ value: String) -> Self {
        attribute("longdesc", value)
    }
    
    /// Specifies which referrer information to use when fetching an image
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        attribute("referrerpolicy", value.rawValue)
    }
    
    /// Specifies image sizes for different page layouts
    func sizes(_ value: String) -> Self {
        attribute("sizes", value)
    }
    
    /// Specifies the path to the image
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies a list of image files to use in different situations
    func srcset(_ value: String) -> Self {
        attribute("srcset", value)
    }
    
    /// Specifies an image as a client-side image map
    func usemap(_ value: String) -> Self {
        attribute("usemap", "#" + value)
    }
    
    /// Specifies the width of an image
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}

