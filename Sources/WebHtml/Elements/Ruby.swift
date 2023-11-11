//
//  Ruby.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<ruby>` HTML element represents small annotations that are rendered above, below, or next to base text, usually used for showing the pronunciation of East Asian characters.
///
/// It can also be used for annotating other kinds of text, but this usage is less common.
///
/// The term ruby originated as a unit of measurement used by typesetters, representing the smallest size that text can be printed on newsprint while remaining legible.
///
/// For more information, see [ruby docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ruby)
open class Ruby: StandardElement {
    override open class var name: String { .init(describing: Ruby.self).lowercased() }
}
