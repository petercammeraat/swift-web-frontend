//
//  MainElement.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<main>` HTML element represents the dominant content of the `<body>` of a document.
///
/// The main content area consists of content that is directly related to or expands upon the central topic of a document, or the central functionality of an application.
///
/// For more information, see [main docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main)
open class Main: StandardElement {
    override open class var name: String { .init(describing: Main.self).lowercased() }
}
