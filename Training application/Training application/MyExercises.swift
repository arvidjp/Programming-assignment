//
//  MyExercises.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-15.
//

import SwiftUI

struct MyExercises: View {
    var exercises: [ExerciseData] = ExerciseDataList.Exercises
    
    var body: some View {
        NavigationView {
            List(exercises, id: \.id) { övning in
                NavigationLink(destination: ExerciseDetailView(övning: övning), label:{
                    ÖvningarCell(övning: övning)
                    
                })
                
            } .navigationTitle("Mina övningar")
            
        }
    }
        
}

struct ÖvningarCell: View {
    var övning: ExerciseData
    
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
    }
}
