//
//  Template.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<template>` HTML element is a mechanism for holding HTML that is not to be rendered immediately when a page is loaded but may be instantiated subsequently during runtime using JavaScript.
///
/// Think of a template as a content fragment that is being stored for subsequent use in the document. While the parser does process the contents of the `<template>` element while loading the page, it does so only to ensure that those contents are valid; the element's contents are not rendered, however.
///
/// For more information, see [template docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template)
open class Template: StandardElement {
    override open class var name: String { .init(describing: Template.self).lowercased() }
}
