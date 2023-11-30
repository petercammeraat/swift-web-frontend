//
//  Footer.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<footer>` HTML element represents a footer for its nearest ancestor sectioning content or sectioning root element. A `<footer>` typically contains information about the author of the section, copyright data or links to related documents.
///
/// For more information, see [footer docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer)
open class Footer: StandardElement {
    override open class var name: String { .init(describing: Footer.self).lowercased() }
}
