//
//  WorkoutData.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-25.
//

import SwiftUI

class WorkoutsData : ObservableObject {
    
    @Published var workouts : [WorkoutDataModel] = [] {
        didSet {
            saveWorkout()
        }
    }
    let träningarKey : String = "träningar_list"
    init() {
        getWorkouts()
    }
    func getWorkouts() {
      guard
            let data = UserDefaults.standard.data(forKey: träningarKey),
            let saveWorkout = try? JSONDecoder().decode([WorkoutDataModel].self, from: data)
        else {return}
        self.workouts = saveWorkout
    }
    func deleteWorkout(indexSet: IndexSet) {
        workouts.remove(atOffsets: indexSet)
    }
    func addWorkout(workoutName: String) {
        let newWorkout = WorkoutDataModel(workoutName: workoutName)
        workouts.append(newWorkout)
    }
    func saveWorkout() {
        if let encodedData = try? JSONEncoder().encode(workouts) {
            UserDefaults.standard.set(encodedData, forKey: träningarKey)
        }
    }

}


