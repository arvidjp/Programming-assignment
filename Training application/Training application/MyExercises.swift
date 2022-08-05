//
//  MyExercises.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-15.
//

import SwiftUI

struct MyExercises: View {
    
    @EnvironmentObject var exerciseData : ÖvningsData
    
    var body: some View {
        
        VStack {
            List { ForEach(exerciseData.övningar)
                { övning in
                    NavigationLink(destination: ExerciseDetailView(övning: övning), label:{
                        ÖvningarCell(övning: övning)
                        
                    })
                    
                } .onDelete(perform: exerciseData.deleteÖvning)
                
            } .navigationTitle("Mina övningar")
            
            NavigationLink(destination: AddExercise()) {
                Text("Lägg till ny övning")
            }
        }
    }
}

struct ÖvningarCell: View {
    var övning: ExerciseDataModel
    
    var body: some View{
        HStack {
            Text (övning.exerciseName)
                .fontWeight(.bold)
                .padding()
            
            VStack (alignment: .leading, spacing: 3) {
                Text("Antal rep: \(övning.exerciseRep)")
                Text("Antal set: \(övning.exerciseSet)")
                Text("Vila: \(övning.exerciseRest)")
                Text("Vikt: \(övning.exerciseWeight) kg")
                
            } .padding()
        }
    }
}


struct MyExercises_Previews: PreviewProvider {
    static var previews: some View {
        MyExercises()
            .environmentObject(ÖvningsData())
    }
}
