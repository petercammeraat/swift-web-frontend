//
//  Html.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<html>` HTML element represents the root (top-level element) of an HTML document, so it is also referred to as the root element. All other elements must be descendants of this element.
///
/// For more information, see [html docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html)
open class Html: StandardElement {
    override open class var name: String { .init(describing: Html.self).lowercased() }
    
    public private(set) var lang: Lang?

    public init(lang: Lang? = nil, _ children: [Element]? = nil) {
        self.lang = lang
        super.init(children)
        self.lang(lang)
    }
    
    public convenience init(lang: Lang? = nil, @ElementBuilder _ builder: () -> Element) {
        self.init(lang: lang, [builder()])
    }
}

public extension Html {
    /// Specifies the XML namespace attribute (If you need your content to conform to XHTML)
    func xmlns() -> Self {
        attribute("xmlns", "http://www.w3.org/1999/xhtml")
    }
}
