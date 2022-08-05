//
//  WorkoutDataModel.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-08-03.
//

import Foundation

struct WorkoutDataModel: Identifiable, Codable {
    
    let id: String
    let workoutName : String
   
    init(id: String = UUID().uuidString , workoutName: String) {
        self.id = id
        self.workoutName = workoutName
    }
}
