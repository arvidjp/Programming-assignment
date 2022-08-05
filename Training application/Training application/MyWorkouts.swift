//
//  MyWorkouts.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-01.
//

import SwiftUI

struct MyWorkouts: View {

    @EnvironmentObject var workoutData : WorkoutsData
  
    
    var body: some View {
        VStack {
            List { ForEach(workoutData.workouts)
                { träning in
                    NavigationLink(destination: WorkoutDetailView(träning: träning), label:{
                        TräningspassCell(träningspass: träning)
                    })
                }
                .onDelete(perform: workoutData.deleteWorkout)
            }
        } .navigationTitle("Mina träningspass")
        
        NavigationLink(destination: AddWorkout()) {
            Text("Lägg till nytt träningspass")
        }
    }
}

struct TräningspassCell: View {
    let träningspass: WorkoutDataModel
    
    var body: some View{
            Text (träningspass.workoutName)
                .fontWeight(.bold)
                .padding()
            
        
    }
}

struct MyWorkouts_Previews: PreviewProvider {
    static var previews: some View {
        MyWorkouts()
            .environmentObject(WorkoutsData())
    }
}
