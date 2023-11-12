//
//  Audio.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<audio>` HTML element is used to embed sound content in documents. It may contain one or more audio sources, represented using the src attribute or the `<source>` element: the browser will choose the most suitable one. It can also be the destination for streamed media, using a MediaStream.
///
/// For more information, see [audio docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
open class Audio: StandardElement {
    override open class var name: String { .init(describing: Audio.self).lowercased() }
}

public extension Audio {
    enum Preload: String {
        /// The author thinks that the browser should load the entire audio file when the page loads
        case auto
        /// The author thinks that the browser should load only metadata when the page loads
        case metadata
        /// The author thinks that the browser should NOT load the audio file when the page loads
        case none
    }
    
    /// Specifies that the audio will start playing as soon as it is ready
    func autoplay(_ condition: Bool = true) -> Self {
        flagAttribute("autoplay", nil, condition)
    }
    
    /// Specifies that audio controls should be displayed (such as a play/pause button etc)
    func controls(_ condition: Bool = true) -> Self {
        flagAttribute("controls", nil, condition)
    }
    
    /// Specifies that the audio will start over again, every time it is finished
    func loop(_ condition: Bool = true) -> Self {
        flagAttribute("loop", nil, condition)
    }
    
    /// Specifies that the audio output should be muted
    func muted(_ condition: Bool = true) -> Self {
        flagAttribute("muted", nil, condition)
    }
    
    /// Specifies if and how the author thinks the audio should be loaded when the page loads
    func preload(_ value: Preload = .auto) -> Self {
        attribute("preload", value.rawValue)
    }
    
    /// Specifies the URL of the audio file
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
}
