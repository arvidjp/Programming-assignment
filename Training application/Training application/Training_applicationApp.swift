//
//  Training_applicationApp.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-06-28.
//

import SwiftUI

@main
struct Training_applicationApp: App {
    
    @StateObject var exerciseData : ÖvningsData = ÖvningsData()
    @StateObject var workoutData : WorkoutsData = WorkoutsData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(exerciseData)
                .environmentObject(workoutData)
            
        }
        
    }
}
