//
//  SpotiBookApp.swift
//  SpotiBook
//
//  Created by Till Hainbach on 02.04.21.
//

import SwiftUI


@main
struct SpotifyQuickStart: App {
    
    @StateObject var spotifyController = SpotifyController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    spotifyController.setAccessToken(from: url)
                }
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didFinishLaunchingNotification), perform: { _ in
                    spotifyController.connect()
                })
        }
    }
}
