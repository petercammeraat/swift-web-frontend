//
//  Article.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<article>` HTML element represents a self-contained composition in a document, page, application, or site, which is intended to be independently distributable or reusable (e.g., in syndication). 
/// 
/// Examples include: a forum post, a magazine or newspaper article, or a blog entry, a product card, a user-submitted comment, an interactive widget or gadget, or any other independent item of content.
///
/// For more information, see [article docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/article)
open class Article: StandardElement {
    override open class var name: String { .init(describing: Article.self).lowercased() }
}

