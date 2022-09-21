//
//  Settings.swift
//  pwa-shell
//
//  Created by Gleb Khmyznikov on 11/23/19.
//  
//

import WebKit

struct Cookie {
    var name: String
    var value: String
}

let gcmMessageIDKey = "148206812913"

let rootUrl = URL(string: "https://notes.dejong.dev/?standalone=true")!

// rootUrl should be in allowedOrigins. allowedOrigins + authOrigins <= 10 domains max.
// All domains should be in WKAppBoundDomains list
let allowedOrigins = [ "notes.dejong.dev" ]
let authOrigins = [ "notes.dejong.dev" ];

let platformCookie = Cookie(name: "app-platform", value: "ios/ipados")

// UI options
let displayMode = "standalone" // standalone / fullscreen.
let adaptiveUIStyle = true     // iOS 15+ only. Change app theme on the fly to dark/light related to WebView background color.
let overrideStatusBar = true   // iOS 13-14 only. if you don't support dark/light system theme.
let statusBarTheme = "dark"    // dark / light, related to override option.
