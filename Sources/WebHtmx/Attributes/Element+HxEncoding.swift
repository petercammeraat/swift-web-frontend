//
//  Element+HxEncoding.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-encoding` attribute allows you to switch the request encoding from the usual `application/x-www-form-urlencoded` encoding to `multipart/form-data`, usually to support file uploads in an ajax request.
    ///
    /// The value of this attribute should be `multipart/form-data`.
    ///
    /// For more information, see [hx-encoding docs](https://htmx.org/attributes/hx-encoding/)
    @discardableResult
    func hxEncoding(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-encoding", value, condition)
    }
}
