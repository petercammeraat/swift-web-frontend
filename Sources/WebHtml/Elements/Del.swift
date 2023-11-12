//
//  Del.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<del>` HTML element represents a range of text that has been deleted from a document. This can be used when rendering "track changes" or source code diff information, for example. The `<ins>` element can be used for the opposite purpose: to indicate text that has been added to the document.
///
/// For more information, see [del docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/del)
open class Del: StandardElement {
    override open class var name: String { .init(describing: Del.self).lowercased() }
}

public extension Del {
    /// Specifies a URL to a document that explains the reason why the text was deleted/changed
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
    
    /// Specifies the date and time of when the text was deleted/changed
    ///
    /// Format: `YYYY-MM-DDThh:mm:ssTZD`
    func datetime(_ value: String) -> Self {
        attribute("datetime", value)
    }
}
