//
//  Embed.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<embed>` HTML element embeds external content at the specified point in the document. This content is provided by an external application or other source of interactive content such as a browser plug-in.
///
/// For more information, see [embed docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/embed)
open class Embed: EmptyElement {
    override open class var name: String { .init(describing: Embed.self).lowercased() }
}

public extension Embed {
    /// Specifies the height of the embedded content
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies the address of the external file to embed
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the media type of the embedded content
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
    
    /// Specifies the width of the embedded content
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
