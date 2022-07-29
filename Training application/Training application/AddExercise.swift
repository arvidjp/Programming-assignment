//
//  AddExercise.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-28.
//
import Combine
import SwiftUI



struct AddExercise: View {
    
    @ObservedObject var övningsData = ÖvningsData()
    
    var body: some View {
        Form {
            Section {
                TextField("Namn på övning", text: $övningsData.namnPåÖvning)
                TextField("Beskrivning av övning", text: $övningsData.beskrivningAvÖvning)
                TextField("Antal rep", text: $övningsData.antalRepetitioner)
                TextField("Antal set", text: $övningsData.antalSet)
                TextField("Vila mellan set", text: $övningsData.viloTid)
                TextField("Belastning i kg", text: $övningsData.belastning)
            } header: {
                Text("Ny övning")
            }
            
            
        }
    }
    
}


struct AddExercise_Previews: PreviewProvider {
    static var previews: some View {
        AddExercise()
    }
}
