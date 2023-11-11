//
//  Hgroup.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<hgroup>` HTML element represents a heading and related content. It groups a single `<h1>`–`<h6>` element with one or more `<p>`.
///
/// For more information, see [hgroup docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/hgroup)
open class Hgroup: StandardElement {
    override open class var name: String { .init(describing: Hgroup.self).lowercased() }
}
