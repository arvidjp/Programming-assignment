//
//  ExerciseDetailView.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-20.
//

import SwiftUI

struct ExerciseDetailView: View {
    
    var övning: ExerciseData
    
    var body: some View {
        VStack(spacing: 10) {
            Text(övning.exerciseName)
                .fontWeight(.bold)
                .font(.largeTitle)
                .scaledToFit()
                .padding()
            
            Text(övning.exerciseDescription)
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            Text("Antal repetitioner : \(övning.exerciseRep)")
                .font(.subheadline)
                .fontWeight(.medium)
                
                
            
            Text("Antal sets : \(övning.exerciseSet)")
                .font(.subheadline)
                .fontWeight(.medium)
                
            
            Text("Vila mellan varje set : \(övning.exerciseRest) minuter")
                .font(.subheadline)
                .fontWeight(.medium)
                
                
            Text("Belastning : \(övning.exerciseWeight) kg")
                .font(.subheadline)
                .fontWeight(.medium)
                
        }
    }
}

struct ExerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailView(övning: ExerciseDataList.Exercises.first!)
    }
}
