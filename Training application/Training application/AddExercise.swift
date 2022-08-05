//
//  AddExercise.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-28.
//
import Combine
import SwiftUI



struct AddExercise: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var övningsData : ÖvningsData
    @State var exerciseName = ""
   // @State var exerciseDescription = "" änvänds inte i dagsläget
    @State var exerciseRep = ""
    @State var exerciseSet = ""
    @State var exerciseRest = ""
    @State var exerciseWeight = ""
    
   
    
    
    var body: some View {
        Form {
            Section {
                TextField("Namn på övning", text: $exerciseName)
                TextField("Antal rep", text: $exerciseRep)
                    .keyboardType(.numberPad)
                TextField("Antal set", text: $exerciseSet)
                    .keyboardType(.numberPad)
                TextField("Vila mellan set", text: $exerciseRest)
                TextField("Belastning i kg", text: $exerciseWeight)
                    .keyboardType(.numberPad)
                
                Button(action:
                    saveButtonPressed
                , label: {
                    Text("Lägg till övning")
                    
                })
                
            }
                
        
            }.navigationTitle("Lägg till ny övning")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                }
            }
            
            
        } 
    
    func saveButtonPressed() {
        övningsData.addTheExercise(exerciseName: exerciseName, exerciseRep: exerciseRep, exerciseSet: exerciseSet, exerciseRest: exerciseRest, exerciseWeight: exerciseWeight)
        presentationMode.wrappedValue.dismiss()
    }
    
}


struct AddExercise_Previews: PreviewProvider {
    static var previews: some View {
        AddExercise()
            .environmentObject(ÖvningsData())
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
