//
//  Dir.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

/// The `dir` global attribute is an enumerated attribute that indicates the directionality of the element's text.
///
/// For more information, see [dir docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/dir)
public enum Dir: String {
    /// Default. Left-to-right text direction
    case ltr
    /// Right-to-left text direction
    case rtl
    /// Let the browser figure out the text direction, based on the content (only recommended if the text direction is unknown)
    case auto
}
