//
//  MyAppApp.swift
//  MyApp
//
//  Created by Moritz Tucher on 19.09.24.
//

import SwiftUI
import Firebase
import RevenueCat
import PostHog

@main
struct MyAppApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Firebase App Configured")
        
        let revenueCatAPIKey = ""
        
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: revenueCatAPIKey)
        print("RevenueCat Configured")
        
        let postHogAPIKey = ""
        let postHogHost = "https://us.i.posthog.com"
        
        let config = PostHogConfig(apiKey: postHogAPIKey, host: postHogHost)
        PostHogSDK.shared.setup(config)
        print("PostHog Configured")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
