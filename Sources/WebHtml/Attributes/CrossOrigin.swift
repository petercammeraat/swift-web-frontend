//
//  CrossOrigin.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// The `crossorigin` attribute, valid on the `<audio>`, `<img>`, `<link>`, `<script>`, and `<video>` elements, provides support for CORS, defining how the element handles cross-origin requests, thereby enabling the configuration of the CORS requests for the element's fetched data. Depending on the element, the attribute can be a CORS settings attribute.
///
/// For more information, see [HTML attribute: crossorigin](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/crossorigin)
public enum CrossOrigin: String {
    /// Request uses CORS headers and credentials flag is set to 'same-origin'. There is no exchange of user credentials via cookies, client-side TLS certificates or HTTP authentication, unless destination is the same origin.
    case anonymous

    /// Request uses CORS headers, credentials flag is set to 'include' and user credentials are always included.
    case useCredentials = "use-credentials"
}
