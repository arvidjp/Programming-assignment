//
//  WorkoutDetailView.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-25.
//

import SwiftUI

struct WorkoutDetailView: View {
    var övningarTräningspass: WorkoutData
    var body: some View {
        VStack {
        ÖvningarInTräningpassCell(övningInTräning: övningarTräningspass)
        }
    }
}


struct ÖvningarInTräningpassCell: View {
    var övningInTräning: WorkoutData
    var body: some View {
        VStack {
            
            Text(övningInTräning.ExerciseInWorkout.exerciseName)
                .fontWeight(.bold)
                .font(.largeTitle)
                .scaledToFit()
                .padding()
            
            Text("Antal repetitioner: \(övningInTräning.ExerciseInWorkout.exerciseRep)")
            
            Text("Antal set: \(övningInTräning.ExerciseInWorkout.exerciseSet)")
            Text("Belastning: \(övningInTräning.ExerciseInWorkout.exerciseWeight) kg")
            Text("Vilotid: \(övningInTräning.ExerciseInWorkout.exerciseRest)")
            
        } .padding()
    }
    
}
struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(övningarTräningspass: WorkoutList.Workouts.first!)
    }
}
