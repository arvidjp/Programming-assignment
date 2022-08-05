//
//  WorkoutDetailView.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-25.
//

import SwiftUI

struct WorkoutDetailView: View {
    let träning : WorkoutDataModel
 
    var body: some View {
        VStack {
            Text(träning.workoutName)
                .fontWeight(.bold)
                .font(.largeTitle)
                .scaledToFit()
                .padding()
            
            Text("Här ska det finnas informaion om vilka övningar som tillhör detta träningspass")
                .fontWeight(.medium)
                .font(.subheadline)
            Spacer()
        }
    }
}

//Layout för hur övningarna i ett träningspass skall visas

//struct ÖvningarInTräningpassCell: View {
//
//    var body: some View {
//        VStack {
//            Text(övningInTräning.ExerciseInWorkout.exerciseName)
//                .fontWeight(.bold)
//                .font(.largeTitle)
//                .scaledToFit()
//                .padding()
//            Text("Antal repetitioner: \(övningInTräning.ExerciseInWorkout.exerciseRep)")
//            Text("Antal set: \(övningInTräning.ExerciseInWorkout.exerciseSet)")
//            Text("Belastning: \(övningInTräning.ExerciseInWorkout.exerciseWeight) kg")
//            Text("Vilotid: \(övningInTräning.ExerciseInWorkout.exerciseRest)")
//        } .padding()
//}
//}

struct WorkoutDetailView_Previews: PreviewProvider {
    
    static var träning1 = WorkoutDataModel(workoutName: "Ben")
    static var previews: some View {
        WorkoutDetailView(träning: träning1)
        //övningarTräningspass: WorkoutList.Workouts.first!)
    }
}
