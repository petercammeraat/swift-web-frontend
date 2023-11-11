//
//  RefererPolicy.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

/// The Referrer-Policy HTTP header controls how much referrer information (sent with the Referer header) should be included with requests. Aside from the HTTP header, you can set this policy in HTML.
///
/// For more information, see [Referrer-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy)
public enum RefererPolicy: String {
    /// The Referer header will be omitted: sent requests do not include any referrer information.
    case noReferrer = "no-referrer"

    /// Send the origin, path, and querystring in Referer when the protocol security level stays the same or improves (HTTP→HTTP, HTTP→HTTPS, HTTPS→HTTPS). Don't send the Referer header for requests to less secure destinations (HTTPS→HTTP, HTTPS→file).
    case noReferrerWhenDowngrade = "no-referrer-when-downgrade"

    /// Send only the origin in the Referer header. For example, a document at `https://example.com/page.html` will send the referrer `https://example.com/`.
    case origin

    /// When performing a same-origin request to the same protocol level (HTTP→HTTP, HTTPS→HTTPS), send the origin, path, and query string. Send only the origin for cross origin requests and requests to less secure destinations (HTTPS→HTTP).
    case originWhenCrossOrigin = "origin-when-cross-origin"

    /// Send the origin, path, and query string for same-origin requests. Don't send the Referer header for cross-origin requests.
    case sameOrigin = "same-origin"

    /// Send only the origin when the protocol security level stays the same (HTTPS→HTTPS). Don't send the Referer header to less secure destinations (HTTPS→HTTP).
    case strictOrigin = "strict-origin"

    /// **Default** Send the origin, path, and querystring when performing a same-origin request. For cross-origin requests send the origin (only) when the protocol security level stays same (HTTPS→HTTPS). Don't send the Referer header to less secure destinations (HTTPS→HTTP).
    case strictOriginWhenCrossOrigin = "strict-origin-when-cross-origin"

    /// Send the origin, path, and query string when performing any request, regardless of security.
    ///
    /// **Warning:** This policy will leak potentially-private information from HTTPS resource URLs to insecure origins. Carefully consider the impact of this setting.
    case unsafeUrl = "unsafe-url"
}
