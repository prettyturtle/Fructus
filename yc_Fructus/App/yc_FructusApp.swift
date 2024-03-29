//
//  yc_FructusApp.swift
//  yc_Fructus
//
//  Created by yc on 2023/08/17.
//

import SwiftUI

@main
struct yc_FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
