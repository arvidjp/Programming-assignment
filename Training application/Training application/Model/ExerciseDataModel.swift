//
//  ExerciseDataModel.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-08-01.
//

import Foundation

struct ExerciseDataModel: Identifiable, Codable {
    let id: String
    let exerciseName: String
    //let exerciseDescription: String
    let exerciseRep: String
    let exerciseSet: String
    let exerciseRest: String
    let exerciseWeight: String
    
    init(id: String = UUID().uuidString , exerciseName : String, exerciseRep : String, exerciseSet : String, exerciseRest : String, exerciseWeight : String) {
        self.id = id
        self.exerciseName = exerciseName
        //self.exerciseDescription = exerciseDescription
        self.exerciseRep = exerciseRep
        self.exerciseSet = exerciseSet
        self.exerciseRest = exerciseRest
        self.exerciseWeight = exerciseWeight
    }
    
    
}
