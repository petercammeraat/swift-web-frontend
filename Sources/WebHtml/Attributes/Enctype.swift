//
//  Enctype.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// If the value of the method attribute is post, enctype is the MIME type of the form submission.
///
/// For more information, see [enctype docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#enctype)
public enum Enctype: String {
    case urlEncoded = "application/x-www-form-urlencoded"
    case multipart = "multipart/form-data"
    case plain = "text/plain"
}
