//
//  Abdulrahmansapplication3App.swift
//  Abdulrahmansapplication3

import SwiftUI

@main
struct Abdulrahmansapplication3App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LanguageView()
        }
    }
}
