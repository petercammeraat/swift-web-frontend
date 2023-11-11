//
//  Style.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<style>` HTML element contains style information for a document, or part of a document.
///
/// It contains CSS, which is applied to the contents of the document containing the `<style>` element.
///
/// For more information, see [style docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style)
open class Style: StandardElement {
    override open class var name: String { .init(describing: Style.self).lowercased() }
}

public extension Style {
    /// Specifies what media/device the media resource is optimized for
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
    
    /// Specifies the media type (text/css) of the `<style>` tag
    func css() -> Self {
        attribute("type", "text/css")
    }
}
