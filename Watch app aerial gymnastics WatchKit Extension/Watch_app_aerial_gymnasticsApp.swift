//
//  Watch_app_aerial_gymnasticsApp.swift
//  Watch app aerial gymnastics WatchKit Extension
//
//  Created by Марина Михайлова on 12.11.2020.
//

import SwiftUI

@main
struct Watch_app_aerial_gymnasticsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
