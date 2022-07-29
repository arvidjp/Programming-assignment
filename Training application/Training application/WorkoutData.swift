//
//  WorkoutData.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-25.
//

import SwiftUI

struct WorkoutData: Identifiable {
    let id = UUID()
    let workoutName : String
    let ExerciseInWorkout : ExerciseData
    
  
        
}

    struct WorkoutList {
        static let Workouts = [
            WorkoutData(workoutName: "Workout 1", ExerciseInWorkout: ExerciseData(exerciseName: "Knäböj", exerciseDescription: "Ben", exerciseRep: 3, exerciseSet: 2, exerciseRest: 1.20, exerciseWeight: 60)),
            
            WorkoutData(workoutName: "Workout 2", ExerciseInWorkout: ExerciseData(exerciseName: "Benspark", exerciseDescription: "Ben", exerciseRep: 3, exerciseSet: 2, exerciseRest: 1.30, exerciseWeight: 70)),
        ]
    }
//struct WorkoutData_Previews: PreviewProvider {
    //static var previews: some View {
      //  WorkoutData()
   // }
//}
