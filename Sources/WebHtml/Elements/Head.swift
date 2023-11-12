//
//  Head.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<head>` HTML element contains machine-readable information (metadata) about the document, like its title, scripts, and style sheets.
///
/// **Note:** `<head>` primarily holds information for machine processing, not human-readability. For human-visible information, like top-level headings and listed authors, see the `<header>` element.
///
/// For more information, see [head docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head)
open class Head: StandardElement {
    override open class var name: String { .init(describing: Head.self).lowercased() }

    public private(set) var title: Title?
    public private(set) var styles: [Style]?
    public private(set) var links: [Link]?
    public private(set) var metas: [Meta]?
    public private(set) var scripts: [Script]?
    public private(set) var bases: [Base]?

    public init(
        title: Title? = nil,
        styles: [Style]? = nil,
        links: [Link]? = nil,
        metas: [Meta]? = nil,
        scripts: [Script]? = nil,
        bases: [Base]? = nil,
        _ children: [Element]? = nil
    ) {
        self.title = title
        self.styles = styles
        self.links = links
        self.metas = metas
        self.scripts = scripts
        self.bases = bases

        super.init(name: Self.name, children)
    }

    public convenience init(
        title: Title? = nil,
        styles: [Style] = [],
        bases: [Base] = [],
        links: [Link] = [],
        metas: [Meta] = [],
        scripts: [Script] = [],
        noscripts: [Noscript] = [],
        @ElementBuilder _ builder: () -> Element
    ) {
        self.init(
            title: title,
            styles: styles,
            links: links,
            metas: metas,
            scripts: scripts,
            bases: bases,
            [builder()]
        )
    }
}
