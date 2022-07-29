//
//  MyWorkouts.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-01.
//

import SwiftUI

struct MyWorkouts: View {
    var workouts: [WorkoutData] = WorkoutList.Workouts
   
    var body: some View {
        //NavigationView{
            List(workouts, id: \.id) { träningar in
                NavigationLink(destination: WorkoutDetailView(övningarTräningspass: träningar)) {
                    TräningspassCell(träningspass: träningar)
                }
                
                
            } .navigationTitle("Mina träningspass")
        //}
        
    }
}

struct TräningspassCell: View {
    var träningspass: WorkoutData
    
    var body: some View{
        HStack{
            Text (träningspass.workoutName)
                .fontWeight(.bold)
                .padding()
            VStack(alignment: .leading, spacing: 3) {
                Text(träningspass.ExerciseInWorkout.exerciseName)
                    
                Text(träningspass.ExerciseInWorkout.exerciseName)
            }
        }
    }
}

struct MyWorkouts_Previews: PreviewProvider {
    static var previews: some View {
        MyWorkouts()
    }
}
