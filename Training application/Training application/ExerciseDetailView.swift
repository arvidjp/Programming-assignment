//
//  ExerciseDetailView.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-20.
//

import SwiftUI

struct ExerciseDetailView: View {
    
    let övning: ExerciseDataModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text(övning.exerciseName)
                .fontWeight(.bold)
                .font(.largeTitle)
                .scaledToFit()
                .padding()
            
//Används inte i dagsläget men är layouten för en beskrivning av övningen
//            Text(övning.exerciseDescription)
//                .font(.body)
//                .fontWeight(.semibold)
//                .multilineTextAlignment(.center)
            
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
            Spacer()
                
        }
    }
}

struct ExerciseDetailView_Previews: PreviewProvider {
    
    static var övning1 = ExerciseDataModel(exerciseName: "Knäböj", exerciseRep: "2", exerciseSet: "3", exerciseRest: "1.30", exerciseWeight: "50")
    
    static var previews: some View {
        ExerciseDetailView(övning: övning1)
    }
}
