//
//  Object.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<object>` HTML element represents an external resource, which can be treated as an image, a nested browsing context, or a resource to be handled by a plugin.
///
/// For more information, see [object docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/object)
open class Object: StandardElement {
    override open class var name: String { .init(describing: Object.self).lowercased() }
}

public extension Object {
    /// Specifies the URL of the resource to be used by the object
    func data(_ value: String) -> Self {
        attribute("data", value)
    }
    
    /// Specifies which form the object belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the height of the object
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
        
    /// Specifies a name for the object
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies the media type of data specified in the data attribute
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
    
    /// Specifies whether the type attribute and the actual content of the resource must match to be displayed
    func typemustmatch(_ value: Bool) -> Self {
        attribute("typemustmatch", String(value))
    }
    
    /// Specifies the name of a client-side image map to be used with the object
    func usemap(_ value: String) -> Self {
        attribute("usemap", "#" + value)
    }
    
    /// Specifies the width of the object
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}