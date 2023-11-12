//
//  Script.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<script>` HTML element is used to embed executable code or data; this is typically used to embed or refer to JavaScript code.
///
/// The `<script>` element can also be used with other languages, such as WebGL's GLSL shader programming language and JSON.
///
/// For more information, see [script docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script)
open class Script: StandardElement {
    override open class var name: String { .init(describing: Script.self).lowercased() }
    
    public enum `Type`: String {
        case javascript = "text/javascript"
    }
}

public extension Script {
    /// Specifies that the script is executed asynchronously (only for external scripts)
    func async(_ condition: Bool = true) -> Self {
        flagAttribute("async", nil, condition)
    }
    
    /// Sets the mode of the request to an HTTP CORS Request
    func crossorigin(_ value: CrossOrigin) -> Self {
        attribute("crossorigin", value.rawValue)
    }
    
    /// Specifies that the script is executed when the page has finished parsing (only for external scripts)
    func `defer`(_ condition: Bool = true) -> Self {
        flagAttribute("defer", nil, condition)
    }
    
    /// Allows a browser to check the fetched script to ensure that the code is never loaded if the source has been manipulated
    func integrity(_ value: String) -> Self {
        attribute("integrity", value)
    }
    
    // @NOTE: auto capitalize string value?
    /// Specifies that the script should not be executed in browsers supporting ES2015 modules
    func nomodule(_ value: Bool) -> Self {
        attribute("nomodule", String(value))
    }
    
    /// Specifies which referrer information to send when fetching a script
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        attribute("referrerpolicy", value.rawValue)
    }
    
    /// The URL of the external script file.
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the media type of the script
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
}

public extension Script {
    /// Specifies the media type of the script
    func type(_ value: `Type`) -> Self {
        type(value.rawValue)
    }
}

