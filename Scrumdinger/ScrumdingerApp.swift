//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Kristina Belova on 21.03.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
