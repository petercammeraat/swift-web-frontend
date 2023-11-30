//
//  Video.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<video>` HTML element embeds a media player which supports video playback into the document.
///
/// You can use `<video>` for audio content as well, but the `<audio>` element may provide a more appropriate user experience.
///
/// For more information, see [video docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video)
open class Video: StandardElement {
    override open class var name: String { .init(describing: Video.self).lowercased() }
}

public extension Video {
    enum Preload: String {
        /// The author thinks that the browser should load the entire video when the page loads
        case auto
        /// The author thinks that the browser should load only metadata when the page loads
        case metadata
        /// The author thinks that the browser should NOT load the video when the page loads
        case none
    }
    
    /// Specifies that the video will start playing as soon as it is ready
    func autoplay(_ condition: Bool = true) -> Self {
        flagAttribute("autoplay", nil, condition)
    }
    
    /// Specifies that video controls should be displayed (such as a play/pause button etc).
    func controls(_ condition: Bool = true) -> Self {
        flagAttribute("controls", nil, condition)
    }
    
    /// Sets the height of the video player
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies that the video will start over again, every time it is finished
    func loop(_ condition: Bool = true) -> Self {
        flagAttribute("loop", nil, condition)
    }
    
    /// Specifies that the audio output of the video should be muted
    func muted(_ condition: Bool = true) -> Self {
        flagAttribute("muted", nil, condition)
    }
    
    /// Specifies an image to be shown while the video is downloading, or until the user hits the play button
    func poster(_ value: String) -> Self {
        attribute("poster", value)
    }
    
    /// Specifies if and how the author thinks the video should be loaded when the page loads
    func preload(_ value: Preload) -> Self {
        attribute("preload", value.rawValue)
    }
    
    /// Specifies the URL of the video file
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Sets the width of the video player
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
