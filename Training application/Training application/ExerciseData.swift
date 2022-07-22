//
//  ExerciseData.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-20.
//

import SwiftUI

struct ExerciseData: Identifiable {
    let id = UUID()
    let exerciseName: String
    let exerciseDescription: String
    let exerciseRep: Int
    let exerciseSet: Int
    let exerciseRest: Double
    let exerciseWeight: Int
    
}

struct ExerciseDataList {
    static let Exercises = [
        ExerciseData(exerciseName: "Bänkpress", exerciseDescription: "Tränar bröstmusklerna", exerciseRep: 6, exerciseSet: 4, exerciseRest: 1.30, exerciseWeight: 60),
        
        ExerciseData(exerciseName: "Knäböj", exerciseDescription: "Tränar benen", exerciseRep: 5, exerciseSet: 5, exerciseRest: 2.00, exerciseWeight: 80),
        
        ExerciseData(exerciseName: "Marklyft", exerciseDescription: "Tränar ben, bål och rygg", exerciseRep: 2, exerciseSet: 3, exerciseRest: 3.00, exerciseWeight: 120)
        
        
        
        
    
    ]
}

//struct ExerciseData_Previews: PreviewProvider {
    //static var previews: some View {
        //ExerciseData()
    //}
//}
